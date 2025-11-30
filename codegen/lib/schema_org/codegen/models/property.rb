module SchemaOrg
  module Codegen
    module Models
      class Property < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :inverse_of, Types::Coercible::Symbol.optional
        attribute :name, Types::Coercible::Symbol
        attribute :superseded_by, Types::Coercible::Symbol.optional
        attribute :supersedes, Types::Coercible::Symbol.optional
        attribute :types, Types::Array.of(Types::Coercible::Symbol)

        def self.from_subject(subject, supersedes:)
          new(
            comment_lines: subject.comment_lines,
            inverse_of: subject.inverse_of.try { it.to_s.underscore.to_sym },
            name: subject.name.to_s.underscore.to_sym,
            superseded_by: subject.superseded_by.try { it.to_s.underscore.to_sym },
            supersedes:,
            types: subject.types,
          )
        end

        def lines
          @lines ||= begin
            xs = comment_lines
            xs << "Supersedes `#{supersedes}`." if supersedes.present?
            xs << "Superseded by `#{superseded_by}`." if superseded_by.present?
            xs << "Inverse-property: `#{inverse_of}`." if inverse_of.present?
            xs
          end
        end
      end
    end
  end
end
