module SchemaOrg
  module Codegen
    module DataModels
      class Type < Base
        attribute :name, Types::Coercible::Symbol
        attribute :url, Types::Coercible::String
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)

        def self.from_subject(subject)
          args = attribute_names.to_h { [it, subject.public_send(it)] }
          new(**args)
        end
      end
    end
  end
end
