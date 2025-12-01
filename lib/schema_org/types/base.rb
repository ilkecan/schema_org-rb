require 'dry-initializer'

module SchemaOrg
  class Base
    extend Dry::Initializer

    def as_jsonld(root: true)
      xs = {}
      xs[:@context] = CONTEXT if root
      xs[:@type] = self.class.name.demodulize
      xs.merge!(attributes.to_h { |k, v| [k.to_s.camelize(:lower), format_value(v)] })
    end

    def to_s
      JSON.pretty_generate as_jsonld
    end

    private

    def attributes
      self.class.dry_initializer.attributes self
    end

    def format_value(value)
      case value
      when Array
        value.map { format_property it }
      when Base
        value.as_jsonld root: false
      else
        value
      end
    end
  end
end
