module SchemaOrg
  module Codegen
    class Generator
      Template = Types::Coercible::Symbol.enum(*%i[
        mixin
        schema_version
        type
      ])

      include Import[:inflector, :template_engine]

      def self.lib_root
        @lib_root ||= Pathname.new('./lib/schema_org')
      end

      def generate(data_model)
        template_type = Template[template_name data_model]
        output = template_engine.render template_type, data_model

        file = output_file template_type, data_model
        file.write output
      end

      private

      def output_file(template_type, data_model)
        segments = case template_type
          when Template[:mixin]
            [ 'mixins', "#{inflector.underscore data_model.name}.rb" ]
          when Template[:schema_version]
            [ 'schema_version.rb' ]
          when Template[:type]
            [ 'types', "#{inflector.underscore data_model.name}.rb" ]
          end
        self.class.lib_root.join(*segments)
      end

      def template_name(data_model)
        cls = inflector.demodulize data_model.class.name
        template_names[cls] ||= inflector.underscore cls
      end

      def template_names
        @template_names ||= {}
      end
    end
  end
end
