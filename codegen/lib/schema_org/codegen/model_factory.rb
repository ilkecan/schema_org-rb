module SchemaOrg
  module Codegen
    class ModelFactory
      include Import[:inflector]

      def data_type_from_subject(subject, parent: :DataType)
        Models::DataType.new(
          comment_lines: subject.comment_lines,
          name: subject.name,
          parent:,
          url: subject.url,
        )
      end

      def mixin_from_subject(subject, properties)
        Models::Mixin.new(
          name: subject.name,
          parents: subject.parents,
          properties:,
        )
      end

      def property_from_subject(subject)
        Models::Property.new(
          comment_lines: subject.comment_lines,
          name: inflector.underscore(subject.name),
          types: subject.types,
        )
      end

      def schema_version
        pn = Pathname.new('./codegen/data/SCHEMA_VERSION.txt')
        schema_version = pn.read.delete_suffix! '-release'
        Models::SchemaVersion.new(schema_version:)
      end

      def type_from_subject(subject)
        Models::Type.new(
          comment_lines: subject.comment_lines,
          name: subject.name,
          url: subject.url,
        )
      end
    end
  end
end
