module SchemaOrg
  module Codegen
    module Models
      class Type < Base
        attribute :comment_lines, Types::Array.of(Types::Coercible::String)
        attribute :name, Types::Coercible::Symbol
        attribute :superseded_by, Types::Coercible::Symbol.optional
        attribute :supersedes, Types::Coercible::Symbol.optional
        attribute :url, Types::Coercible::String

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
