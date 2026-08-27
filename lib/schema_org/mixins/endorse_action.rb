# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module EndorseAction
      include ReactAction

      def self.schema_property_definitions
        {
          endorsee: {
            schema_name: "endorsee",
            schema_url: "https://schema.org/endorsee",
            comment_lines: ["A sub property of participant. The person/organization being supported."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The person/organization being supported.
      def endorsee
        read_property(:endorsee)
      end

      # A sub property of participant. The person/organization being supported.
      def endorsee=(value)
        write_property(:endorsee, value)
      end
    end
  end
end
