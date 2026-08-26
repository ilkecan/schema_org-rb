module SchemaOrg
  module Mixins
    module APIReference
      include TechArticle

      def self.schema_property_definitions
        {
          :assembly => {
            schema_name: "assembly",
            ranges: ["Text"],
          }.freeze,
          :assembly_version => {
            schema_name: "assemblyVersion",
            ranges: ["Text"],
          }.freeze,
          :executable_library_name => {
            schema_name: "executableLibraryName",
            ranges: ["Text"],
          }.freeze,
          :programming_model => {
            schema_name: "programmingModel",
            ranges: ["Text"],
          }.freeze,
          :target_platform => {
            schema_name: "targetPlatform",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def assembly
        read_property(:assembly)
      end

      def assembly=(value)
        write_property(:assembly, value)
      end

      def assembly_version
        read_property(:assembly_version)
      end

      def assembly_version=(value)
        write_property(:assembly_version, value)
      end

      def executable_library_name
        read_property(:executable_library_name)
      end

      def executable_library_name=(value)
        write_property(:executable_library_name, value)
      end

      def programming_model
        read_property(:programming_model)
      end

      def programming_model=(value)
        write_property(:programming_model, value)
      end

      def target_platform
        read_property(:target_platform)
      end

      def target_platform=(value)
        write_property(:target_platform, value)
      end

    end
  end
end
