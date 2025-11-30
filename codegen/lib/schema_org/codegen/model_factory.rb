module SchemaOrg
  module Codegen
    class ModelFactory
      def data_type_from_subject(subject, parent:)
        Models::DataType.new(
          comment_lines: subject.comment_lines,
          name: subject.name,
          parent:,
          url: subject.url,
        )
      end

      def mixin_from_subject(subject, properties:)
        Models::Mixin.new(
          name: subject.name,
          parents: subject.parents,
          properties:,
        )
      end

      def property_from_subject(subject, supersedes:)

        Models::Property.new(
          comment_lines: subject.comment_lines,
          name: subject.name.to_s.underscore.to_sym,
          superseded_by: subject.superseded_by.try { it.to_s.underscore.to_sym },
          supersedes:,
          types: subject.types,
        )
      end

      def schema_version
        pn = Pathname.new('./codegen/data/SCHEMA_VERSION.txt')
        schema_version = pn.read.delete_suffix! '-release'
        Models::SchemaVersion.new(schema_version:)
      end

      def type_from_subject(subject, supersedes:)
        Models::Type.new(
          comment_lines: subject.comment_lines,
          name: subject.name,
          superseded_by: subject.superseded_by,
          supersedes:,
          url: subject.url,
        )
      end
    end
  end
end
