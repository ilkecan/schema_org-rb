module SchemaOrg
  module Codegen
    module Models
      class Mixin < Base
        attribute :name, Types::Coercible::Symbol
        attribute :parents, Types::Array.of(Types::Coercible::Symbol)
        attribute :properties, Types::Array.of(Property)

        def self.from_subject(subject, properties:)
          new(
            name: subject.name,
            parents: subject.parents,
            properties:,
          )
        end
      end
    end
  end
end
