module SchemaOrg
  module Mixins
    module SoftwareSourceCode
      include CreativeWork

      def self.schema_property_definitions
        {
          :code_repository => {
            schema_name: "codeRepository",
            ranges: ["URL"],
          }.freeze,
          :code_sample_type => {
            schema_name: "codeSampleType",
            ranges: ["Text"],
          }.freeze,
          :programming_language => {
            schema_name: "programmingLanguage",
            ranges: ["ComputerLanguage", "Text"],
          }.freeze,
          :runtime => {
            schema_name: "runtime",
            ranges: ["Text"],
          }.freeze,
          :runtime_platform => {
            schema_name: "runtimePlatform",
            ranges: ["RuntimePlatform", "Text"],
          }.freeze,
          :sample_type => {
            schema_name: "sampleType",
            ranges: ["Text"],
          }.freeze,
          :target_product => {
            schema_name: "targetProduct",
            ranges: ["SoftwareApplication"],
          }.freeze,
        }.freeze
      end

      def code_repository
        read_property(:code_repository)
      end

      def code_repository=(value)
        write_property(:code_repository, value)
      end

      def code_sample_type
        read_property(:code_sample_type)
      end

      def code_sample_type=(value)
        write_property(:code_sample_type, value)
      end

      def programming_language
        read_property(:programming_language)
      end

      def programming_language=(value)
        write_property(:programming_language, value)
      end

      def runtime
        read_property(:runtime)
      end

      def runtime=(value)
        write_property(:runtime, value)
      end

      def runtime_platform
        read_property(:runtime_platform)
      end

      def runtime_platform=(value)
        write_property(:runtime_platform, value)
      end

      def sample_type
        read_property(:sample_type)
      end

      def sample_type=(value)
        write_property(:sample_type, value)
      end

      def target_product
        read_property(:target_product)
      end

      def target_product=(value)
        write_property(:target_product, value)
      end

    end
  end
end
