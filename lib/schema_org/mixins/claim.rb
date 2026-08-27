# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Claim
      include CreativeWork

      def self.schema_property_definitions
        {
          appearance: {
            schema_name: "appearance",
            schema_url: "https://schema.org/appearance",
            comment_lines: ["Indicates an occurrence of a [[Claim]] in some [[CreativeWork]]."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          claim_interpreter: {
            schema_name: "claimInterpreter",
            schema_url: "https://schema.org/claimInterpreter",
            comment_lines: ["For a [[Claim]] interpreted from [[MediaObject]] content, the [[interpretedAsClaim]] property can be used to indicate a claim contained, implied or refined from the content of a [[MediaObject]]."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          first_appearance: {
            schema_name: "firstAppearance",
            schema_url: "https://schema.org/firstAppearance",
            comment_lines: ["Indicates the first known occurrence of a [[Claim]] in some [[CreativeWork]]."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates an occurrence of a [[Claim]] in some [[CreativeWork]].
      def appearance
        read_property(:appearance)
      end

      # Indicates an occurrence of a [[Claim]] in some [[CreativeWork]].
      def appearance=(value)
        write_property(:appearance, value)
      end

      # For a [[Claim]] interpreted from [[MediaObject]] content, the [[interpretedAsClaim]] property can be used to indicate a claim contained, implied or refined from the content of a [[MediaObject]].
      def claim_interpreter
        read_property(:claim_interpreter)
      end

      # For a [[Claim]] interpreted from [[MediaObject]] content, the [[interpretedAsClaim]] property can be used to indicate a claim contained, implied or refined from the content of a [[MediaObject]].
      def claim_interpreter=(value)
        write_property(:claim_interpreter, value)
      end

      # Indicates the first known occurrence of a [[Claim]] in some [[CreativeWork]].
      def first_appearance
        read_property(:first_appearance)
      end

      # Indicates the first known occurrence of a [[Claim]] in some [[CreativeWork]].
      def first_appearance=(value)
        write_property(:first_appearance, value)
      end
    end
  end
end
