require 'digest'

module SchemaOrg
  module Codegen
    class Generator
      Template = Types::Coercible::Symbol.enum(*%i[
        data_type
        mixin
        schema_version
        type
      ])

      include Import[:manifest, :template_engine, :writer]

      def self.lib_root
        @lib_root ||= Pathname.new('./lib/schema_org')
      end

      def generate(data_model)
        template_type = Template[template_name data_model]
        output = template_engine.render template_type, data_model
        checksum = compute_checksum(output)

        file = output_file template_type, data_model
        key = file.to_s
        manifest[key] = checksum

        return if manifest[key] == checksum

        writer.write file, output
      end

      private

      def compute_checksum(content)
        Digest::MD5.hexdigest content
      end

      def output_file(template_type, data_model)
        segments = case template_type
          when Template[:data_type]
            [ 'data_types', "#{data_model.name.to_s.underscore}.rb" ]
          when Template[:mixin]
            [ 'mixins', "#{data_model.name.to_s.underscore}.rb" ]
          when Template[:schema_version]
            [ 'schema_version.rb' ]
          when Template[:type]
            [ 'types', "#{data_model.name.to_s.underscore}.rb" ]
          end
        self.class.lib_root.join(*segments)
      end

      def template_name(data_model)
        cls = data_model.class.name.demodulize
        template_names[cls] ||= cls.underscore.to_sym
      end

      def template_names
        @template_names ||= {}
      end
    end
  end
end
