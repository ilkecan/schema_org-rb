# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module SoftwareSourceCode
      include CreativeWork

      def self.schema_property_definitions
        {
          code_repository: {
            schema_name: "codeRepository",
            schema_url: "https://schema.org/codeRepository",
            comment_lines: ["Link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex)."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          code_sample_type: {
            schema_name: "codeSampleType",
            schema_url: "https://schema.org/codeSampleType",
            comment_lines: ["What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "sampleType"
          }.freeze,
          programming_language: {
            schema_name: "programmingLanguage",
            schema_url: "https://schema.org/programmingLanguage",
            comment_lines: ["The computer programming language."].freeze,
            ranges: ["ComputerLanguage", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          runtime: {
            schema_name: "runtime",
            schema_url: "https://schema.org/runtime",
            comment_lines: ["Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "runtimePlatform",
            supersedes: nil
          }.freeze,
          runtime_platform: {
            schema_name: "runtimePlatform",
            schema_url: "https://schema.org/runtimePlatform",
            comment_lines: ["Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0)."].freeze,
            ranges: ["RuntimePlatform", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "runtime"
          }.freeze,
          sample_type: {
            schema_name: "sampleType",
            schema_url: "https://schema.org/sampleType",
            comment_lines: ["What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "codeSampleType",
            supersedes: nil
          }.freeze,
          target_product: {
            schema_name: "targetProduct",
            schema_url: "https://schema.org/targetProduct",
            comment_lines: ["Target Operating System / Product to which the code applies.  If applies to several versions, just the product name can be used."].freeze,
            ranges: ["SoftwareApplication"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex).
      def code_repository
        read_property(:code_repository)
      end

      # Link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex).
      def code_repository=(value)
        write_property(:code_repository, value)
      end

      # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template.
      # Supersedes `sampleType`.
      def code_sample_type
        read_property(:code_sample_type)
      end

      # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template.
      # Supersedes `sampleType`.
      def code_sample_type=(value)
        write_property(:code_sample_type, value)
      end

      # The computer programming language.
      def programming_language
        read_property(:programming_language)
      end

      # The computer programming language.
      def programming_language=(value)
        write_property(:programming_language, value)
      end

      # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      # Superseded by `runtimePlatform`.
      def runtime
        read_property(:runtime)
      end

      # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      # Superseded by `runtimePlatform`.
      def runtime=(value)
        write_property(:runtime, value)
      end

      # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      # Supersedes `runtime`.
      def runtime_platform
        read_property(:runtime_platform)
      end

      # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      # Supersedes `runtime`.
      def runtime_platform=(value)
        write_property(:runtime_platform, value)
      end

      # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template.
      # Superseded by `codeSampleType`.
      def sample_type
        read_property(:sample_type)
      end

      # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template.
      # Superseded by `codeSampleType`.
      def sample_type=(value)
        write_property(:sample_type, value)
      end

      # Target Operating System / Product to which the code applies.  If applies to several versions, just the product name can be used.
      def target_product
        read_property(:target_product)
      end

      # Target Operating System / Product to which the code applies.  If applies to several versions, just the product name can be used.
      def target_product=(value)
        write_property(:target_product, value)
      end
    end
  end
end
