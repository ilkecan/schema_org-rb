require "digest"

module SchemaOrg
  module Codegen
    class Generator
      def initialize(manifest:, template_engine:, writer:, naming: Naming.new, lib_root: Pathname.new("./lib/schema_org"), signature_root: Pathname.new("./sig"))
        @manifest = manifest
        @template_engine = template_engine
        @writer = writer
        @naming = naming
        @lib_root = Pathname.new(lib_root)
        @signature_root = Pathname.new(signature_root)
      end

      def generate(data_model)
        template_type = template_name(data_model)
        output = template_engine.render(template_type, data_model)
        checksum = Digest::MD5.hexdigest(output)
        file = output_file(template_type, data_model)
        key = manifest_key(template_type, data_model)
        previous = manifest[key]
        manifest[key] = checksum
        return if previous == checksum

        writer.write(file, output)
      end

      private

      attr_reader :manifest, :template_engine, :writer, :naming, :lib_root, :signature_root

      def output_file(template_type, data_model)
        return signature_root.join("schema_org.rbs") if template_type == :signature

        segments = case template_type
        when :mixin
          ["mixins", "#{naming.file_name(data_model.name)}.rb"]
        when :schema_version
          ["schema_version.rb"]
        when :generated_vocabulary
          ["generated_vocabulary.rb"]
        else
          ["types", "#{naming.file_name(data_model.name)}.rb"]
        end
        lib_root.join(*segments)
      end

      def manifest_key(template_type, data_model)
        case template_type
        when :mixin then "runtime/mixins/#{naming.file_name(data_model.name)}.rb"
        when :schema_version then "runtime/schema_version.rb"
        when :generated_vocabulary then "runtime/generated_vocabulary.rb"
        when :signature then "signature/schema_org.rbs"
        else "runtime/types/#{naming.file_name(data_model.name)}.rb"
        end
      end

      def template_name(data_model)
        case data_model
        when Models::Mixin then :mixin
        when Models::SchemaVersion then :schema_version
        when Models::Signature then :signature
        when Models::GeneratedVocabulary then :generated_vocabulary
        when Models::Type then :type
        else raise ArgumentError, "Unknown model #{data_model.class}"
        end
      end
    end
  end
end
