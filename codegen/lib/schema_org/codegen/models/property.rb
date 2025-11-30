module SchemaOrg
  module Codegen
    module Models
      class Property < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :superseded_by, Types::Coercible::Symbol.optional
        attribute :supersedes, Types::Coercible::Symbol.optional
        attribute :types, Types::Array.of(Types::Coercible::Symbol)

        def self.from_subject(subject, supersedes:)
          new(
            comment_lines: subject.comment_lines,
            name: subject.name.to_s.underscore.to_sym,
            superseded_by: subject.superseded_by.try { it.to_s.underscore.to_sym },
            supersedes:,
            types: subject.types,
          )
        end

        def lines
          comment_lines + supersession_lines
        end

        def supersession_lines
          xs = []
          xs << "Supersedes `#{supersedes}`." unless supersedes.nil?
          xs << "Superseded by `#{superseded_by}`." unless superseded_by.nil?
          xs
        end
      end
    end
  end
end
