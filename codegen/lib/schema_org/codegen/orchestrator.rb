module SchemaOrg
  module Codegen
    class Orchestrator
      include Import[:generator, :manifest, :model_factory, :parser]

      def orchestrate
        generate_files
        manifest.stale_files.each { Pathname(it).delete }
        manifest.save
      end

      private

      def generate_files
        generate_schema_version
        generate_data_types
        generate_classes
      end

      def generate_schema_version
        generator.generate model_factory.schema_version
      end

      def generate_data_types
        parser.data_types.each { generate_data_type it }
      end

      def generate_classes
        properties = aggregate_properties
        parser.classes.each do
          if it.label == :DataType
            generate_data_type it, parent: nil
          else
            generate_class it, properties[it.label]
          end
        end
      end

      def aggregate_properties
        properties = Hash.new { |h, k| h[k] = [] }
        parser.properties.each do
          property = model_factory.property_from_subject it
          it.used_on.each { |type| properties[type] << property }
        end
        properties
      end

      def generate_data_type(subject, **kwargs)
        gen model_factory.data_type_from_subject(subject, **kwargs)
      end

      def generate_class(subject, properties)
        gen model_factory.mixin_from_subject(subject, properties)
        gen model_factory.type_from_subject(subject)
      end

      def gen(data_model)
        generator.generate data_model
      end
    end
  end
end
