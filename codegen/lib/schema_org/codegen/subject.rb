require 'dry-initializer'

module SchemaOrg
  module Codegen
    class Subject
      extend Dry::Configurable
      extend Dry::Initializer

      setting :prefixes, default: {}, reader: true

      option :statements

      option :comment, proc { it.first.to_s }
      option :label, proc { it.first.to_sym }
      option :type, proc { it.map(&:to_sym) }

      # owl:equivalentClass
      # owl:equivalentProperty
      %w[
        contributor
        domainIncludes
        equivalentClass
        equivalentProperty
        inverseOf
        rangeIncludes
        sameAs
        source
        subClassOf
        subPropertyOf
        supersededBy
      ].each { option INFLECTOR.underscore(it), optional: true }

      def self.from_statements(statements)
        args = parse_statements(statements)
        result = Contract.new.call(args)

        if result.failure?
          raise SchemaOrg::Codegen::ValidationError, "Invalid subject: #{result.errors.to_h}"
        end

        new(**args, statements:)
      end

      private_class_method def self.parse_statements(xs)
        xs.each_with_object(Hash.new { |h, k| h[k] = [] }) do |x, xs|
          key = INFLECTOR.underscore(parse_item(x.predicate).to_s).to_sym
          xs[key] << parse_item(x.object)
        end
      end

      private_class_method def self.parse_item(x)
        case x
        when RDF::Literal
          x.value
        when RDF::URI
          qname = x.qname(prefixes:)
          qname.nil? ? x.to_s : qname[1]
        when RDF::Vocabulary::Term
          x.label.value
        end
      end

      def comment_lines
        comment.strip.split "\n"
      end

      def name
        label
      end

      def parents
        sub_class_of.to_a
      end

      def url
        "#{self.class.prefixes[nil]}#{label}"
      end
    end
  end
end
