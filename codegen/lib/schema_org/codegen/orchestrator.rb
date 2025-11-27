module SchemaOrg
  module Codegen
    class Orchestrator
      include Import[:generator, :manifest, :parser]

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
        generator.generate SchemaOrg::Codegen::DataModels::SchemaVersion.current
      end

      def generate_data_types
        parser.data_types.each { generate_data_type it }
      end

      def generate_classes
        parser.classes.each do
          if it.label == :DataType
            generate_data_type it, parent: nil
          else
            generate_class it
          end
        end
      end

      def generate_data_type(subject, **kwargs)
        gen SchemaOrg::Codegen::DataModels::DataType.from_subject(subject, **kwargs)
      end

      def generate_class(subject)
        gen SchemaOrg::Codegen::DataModels::Mixin.from_subject(subject)
        gen SchemaOrg::Codegen::DataModels::Type.from_subject(subject)
      end

      def gen(data_model)
        generator.generate data_model
      end
    end
  end
end
