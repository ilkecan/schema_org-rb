module SchemaOrg
  module Codegen
    module Models
      class Property
        attr_reader :comment_lines, :inverse_of, :name, :schema_name, :schema_url,
          :superseded_by, :supersedes, :types

        def initialize(comment_lines:, inverse_of:, name:, schema_name:, schema_url:, superseded_by:, supersedes:, types:)
          @comment_lines = comment_lines.freeze
          @inverse_of = inverse_of
          @name = name
          @schema_name = schema_name
          @schema_url = schema_url
          @superseded_by = superseded_by
          @supersedes = supersedes
          @types = types.freeze
        end

        def lines
          @lines ||= begin
            result = comment_lines.dup
            result << "Supersedes `#{supersedes}`." if supersedes
            result << "Superseded by `#{superseded_by}`." if superseded_by
            result << "Inverse-property: `#{inverse_of}`." if inverse_of
            result.freeze
          end
        end
      end
    end
  end
end
