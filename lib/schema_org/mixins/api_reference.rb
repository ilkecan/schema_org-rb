# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module APIReference
      include TechArticle

      def self.schema_property_definitions
        {
          assembly: {
            schema_name: "assembly",
            schema_url: "https://schema.org/assembly",
            comment_lines: ["Library file name, e.g., mscorlib.dll, system.web.dll."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "executableLibraryName",
            supersedes: nil
          }.freeze,
          assembly_version: {
            schema_name: "assemblyVersion",
            schema_url: "https://schema.org/assemblyVersion",
            comment_lines: ["Associated product/technology version. E.g., .NET Framework 4.5."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          executable_library_name: {
            schema_name: "executableLibraryName",
            schema_url: "https://schema.org/executableLibraryName",
            comment_lines: ["Library file name, e.g., mscorlib.dll, system.web.dll."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "assembly"
          }.freeze,
          programming_model: {
            schema_name: "programmingModel",
            schema_url: "https://schema.org/programmingModel",
            comment_lines: ["Indicates whether API is managed or unmanaged."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          target_platform: {
            schema_name: "targetPlatform",
            schema_url: "https://schema.org/targetPlatform",
            comment_lines: ["Type of app development: phone, Metro style, desktop, XBox, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Library file name, e.g., mscorlib.dll, system.web.dll.
      # Superseded by `executableLibraryName`.
      def assembly
        read_property(:assembly)
      end

      # Library file name, e.g., mscorlib.dll, system.web.dll.
      # Superseded by `executableLibraryName`.
      def assembly=(value)
        write_property(:assembly, value)
      end

      # Associated product/technology version. E.g., .NET Framework 4.5.
      def assembly_version
        read_property(:assembly_version)
      end

      # Associated product/technology version. E.g., .NET Framework 4.5.
      def assembly_version=(value)
        write_property(:assembly_version, value)
      end

      # Library file name, e.g., mscorlib.dll, system.web.dll.
      # Supersedes `assembly`.
      def executable_library_name
        read_property(:executable_library_name)
      end

      # Library file name, e.g., mscorlib.dll, system.web.dll.
      # Supersedes `assembly`.
      def executable_library_name=(value)
        write_property(:executable_library_name, value)
      end

      # Indicates whether API is managed or unmanaged.
      def programming_model
        read_property(:programming_model)
      end

      # Indicates whether API is managed or unmanaged.
      def programming_model=(value)
        write_property(:programming_model, value)
      end

      # Type of app development: phone, Metro style, desktop, XBox, etc.
      def target_platform
        read_property(:target_platform)
      end

      # Type of app development: phone, Metro style, desktop, XBox, etc.
      def target_platform=(value)
        write_property(:target_platform, value)
      end
    end
  end
end
