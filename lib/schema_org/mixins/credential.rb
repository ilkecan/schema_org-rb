# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Credential
      include CreativeWork

      def self.schema_property_definitions
        {
          credential_category: {
            schema_name: "credentialCategory",
            schema_url: "https://schema.org/credentialCategory",
            comment_lines: ["The category or type of credential being described, for example \"degree”, “certificate”, “badge”, or more specific term."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recognized_by: {
            schema_name: "recognizedBy",
            schema_url: "https://schema.org/recognizedBy",
            comment_lines: ["An organization that acknowledges the validity, value or utility of a credential. Note: recognition may include a process of quality assurance or accreditation."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_for: {
            schema_name: "validFor",
            schema_url: "https://schema.org/validFor",
            comment_lines: ["The duration of validity of a permit or similar thing."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_in: {
            schema_name: "validIn",
            schema_url: "https://schema.org/validIn",
            comment_lines: ["The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]]."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The category or type of credential being described, for example "degree”, “certificate”, “badge”, or more specific term.
      def credential_category
        read_property(:credential_category)
      end

      # The category or type of credential being described, for example "degree”, “certificate”, “badge”, or more specific term.
      def credential_category=(value)
        write_property(:credential_category, value)
      end

      # An organization that acknowledges the validity, value or utility of a credential. Note: recognition may include a process of quality assurance or accreditation.
      def recognized_by
        read_property(:recognized_by)
      end

      # An organization that acknowledges the validity, value or utility of a credential. Note: recognition may include a process of quality assurance or accreditation.
      def recognized_by=(value)
        write_property(:recognized_by, value)
      end

      # The duration of validity of a permit or similar thing.
      def valid_for
        read_property(:valid_for)
      end

      # The duration of validity of a permit or similar thing.
      def valid_for=(value)
        write_property(:valid_for, value)
      end

      # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
      def valid_in
        read_property(:valid_in)
      end

      # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
      def valid_in=(value)
        write_property(:valid_in, value)
      end
    end
  end
end
