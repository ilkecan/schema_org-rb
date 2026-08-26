module SchemaOrg
  module Codegen
    module Models
      class Type
        attr_reader :comment_lines, :name, :schema_name, :schema_types, :superseded_by, :supersedes, :url, :abstract, :enum_members

        def initialize(comment_lines:, name:, schema_name:, schema_types:, superseded_by:, supersedes:, url:, abstract: false, enum_members: [])
          @comment_lines = comment_lines.freeze
          @name = name
          @schema_name = schema_name
          @schema_types = schema_types.freeze
          @superseded_by = superseded_by
          @supersedes = supersedes
          @url = url
          @abstract = abstract
          @enum_members = enum_members.freeze
        end

        def supersession_lines
          @supersession_lines ||= begin
            result = []
            result << "Supersedes `#{supersedes}`." if supersedes
            result << "Superseded by `#{superseded_by}`." if superseded_by
            result.freeze
          end
        end
      end
    end
  end
end
