require 'digest'

module SchemaOrg
  module Codegen
    class Generator
      def initialize(manifest:, template_engine:, writer:, lib_root: Pathname.new('./lib/schema_org'))
        @manifest = manifest
        @template_engine = template_engine
        @writer = writer
        @lib_root = Pathname.new(lib_root)
      end

      def generate(data_model)
        template_type = template_name(data_model)
        output = template_engine.render(template_type, data_model)
        checksum = Digest::MD5.hexdigest(output)
        file = output_file(template_type, data_model)
        key = file.to_s
        previous = manifest[key]
        manifest[key] = checksum
        return if previous == checksum

        writer.write(file, output)
      end

      private

      attr_reader :manifest, :template_engine, :writer, :lib_root

      def output_file(template_type, data_model)
        segments = case template_type
        when :mixin
          ['mixins', "#{data_model.name.to_s.underscore}.rb"]
        when :schema_version
          ['schema_version.rb']
        else
          ['types', "#{data_model.name.to_s.underscore}.rb"]
        end
        lib_root.join(*segments)
      end

      def template_name(data_model)
        case data_model
        when Models::Mixin then :mixin
        when Models::SchemaVersion then :schema_version
        when Models::Type then :type
        else raise ArgumentError, "Unknown model #{data_model.class}"
        end
      end
    end
  end
end
