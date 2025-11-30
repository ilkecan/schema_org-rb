module SchemaOrg
  module Codegen
    module Models
      class DataType < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :parent, Types::Coercible::Symbol.optional
        attribute :url, Types::Coercible::String

        def self.from_subject(subject, parent:)
          new(
            comment_lines: subject.comment_lines,
            name: subject.name,
            parent:,
            url: subject.url,
          )
        end
      end
    end
  end
end
