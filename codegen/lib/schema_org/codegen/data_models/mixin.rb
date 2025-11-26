module SchemaOrg
  module Codegen
    module DataModels
      class Mixin < Base
        attribute :name, Types::Coercible::Symbol
        attribute :parents, Types::Array.of(Types::Coercible::Symbol)

        def self.from_subject(subject)
          args = attribute_names.to_h { [it, subject.public_send(it)] }
          new(**args)
        end
      end
    end
  end
end
