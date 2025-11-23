require 'dry-initializer'

module SchemaOrg
  module Codegen
    class Subject
      extend Dry::Configurable
      extend Dry::Initializer

      setting :prefixes, default: {}, reader: true

      option :statements
      Attributes.each do
        option it[:name], it[:type], optional: it[:optional]
      end

      def self.from_statements(statements)
        args = parse_statements(statements)
        args = validate(args)
        new(**args, statements:)
      end

      private_class_method def self.contract
        @contract ||= Contract.new
      end

      private_class_method def self.parse_statements(xs)
        xs.each_with_object(Hash.new { |h, k| h[k] = [] }) do |x, xs|
          key = INFLECTOR.underscore(parse_item(x.predicate).to_s).to_sym
          qualified = %i[equivalent_class].include? key
          xs[key] << parse_item(x.object, qualified:)
        end
      end

      private_class_method def self.parse_item(x, qualified: false)
        case x
        when RDF::Literal
          x.value
        when RDF::URI
          qname = x.qname(prefixes:)
          return x.to_s if qname.nil?
          return x.to_s if qname[0].nil? and qname[1].start_with? 'docs/'
          qualified ? qname.join(':') : qname[1]
        when RDF::Vocabulary::Term
          x.label.value
        end
      end

      private_class_method def self.validate(args)
        result = contract.call(args)

        if result.failure?
          raise SchemaOrg::Codegen::ValidationError.from_result result, message: 'Invalid subject'
        end

        result.to_h
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
