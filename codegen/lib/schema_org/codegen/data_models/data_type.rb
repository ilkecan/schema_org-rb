module SchemaOrg
  module Codegen
    module DataModels
      class DataType < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :parent, Types::Coercible::Symbol.optional
        attribute :url, Types::Coercible::String

        def self.from_subject(subject, parent: :DataType)
          args = attribute_names.to_h do
            value =
              if binding.local_variable_defined?(it)
                binding.local_variable_get(it)
              else
                subject.public_send(it)
              end
            [it, value]
          end
          new(**args)
        end
      end
    end
  end
end
