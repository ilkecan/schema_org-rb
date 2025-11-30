require 'dry-initializer'

module SchemaOrg
  module Codegen
    class Subject
      class Factory
        extend Dry::Initializer

        include Import['subject.attributes']

        option :prefixes, proc(&:freeze)

        def build(statements)
          args = parse_statements statements
          args = validate args
          normalize args
          Subject.new(**args, prefixes:, statements:)
        end

        def contract
          @contract ||= Contract.new
        end

        def normalize(args)
          args.each do |k, v|
            fn = attributes[k][:normalizer]
            next if fn.nil?

            args[k] = fn.call v
          end
        end

        def parse_statements(xs)
          xs.each_with_object(Hash.new { |h, k| h[k] = [] }) do |x, xs|
            key = parse_item(x.predicate).to_s.underscore.to_sym
            qualified = %i[equivalent_class].include? key
            xs[key] << parse_item(x.object, qualified:)
          end
        end

        def parse_item(x, qualified: false)
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

        def validate(args)
          result = contract.call(args)

          if result.failure?
            raise SchemaOrg::Codegen::ValidationError.from_result result, message: 'Invalid subject'
          end

          result.to_h
        end
      end
    end
  end
end
