module SchemaOrg
  module Codegen
    module Models
      class Type < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :superseded_by, Types::Coercible::Symbol.optional
        attribute :supersedes, Types::Coercible::Symbol.optional
        attribute :url, Types::Coercible::String

        def self.from_subject(subject, supersedes:)
          new(
            comment_lines: subject.comment_lines,
            name: subject.name,
            superseded_by: subject.superseded_by,
            supersedes:,
            url: subject.url,
          )
        end

        def supersession_lines
          @supression_lines ||= begin
            xs = []
            xs << "Supersedes `#{supersedes}`." if supersedes.present?
            xs << "Superseded by `#{superseded_by}`." if superseded_by.present?
            xs
          end
        end
      end
    end
  end
end
