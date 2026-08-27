# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Thing
      def self.schema_property_definitions
        {
          additional_type: {
            schema_name: "additionalType",
            schema_url: "https://schema.org/additionalType",
            comment_lines: ["An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the", "    use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href=\"https://schema.org/docs/styleguide.html\">style guide</a>."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          alternate_name: {
            schema_name: "alternateName",
            schema_url: "https://schema.org/alternateName",
            comment_lines: ["An alias for the item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          description: {
            schema_name: "description",
            schema_url: "https://schema.org/description",
            comment_lines: ["A description of the item."].freeze,
            ranges: ["Text", "TextObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          disambiguating_description: {
            schema_name: "disambiguatingDescription",
            schema_url: "https://schema.org/disambiguatingDescription",
            comment_lines: ["A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          identifier: {
            schema_name: "identifier",
            schema_url: "https://schema.org/identifier",
            comment_lines: ["The identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details."].freeze,
            ranges: ["PropertyValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          image: {
            schema_name: "image",
            schema_url: "https://schema.org/image",
            comment_lines: ["An image of the item. This can be a [[URL]] or a fully described [[ImageObject]]."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          main_entity_of_page: {
            schema_name: "mainEntityOfPage",
            schema_url: "https://schema.org/mainEntityOfPage",
            comment_lines: ["Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: "mainEntity",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          name: {
            schema_name: "name",
            schema_url: "https://schema.org/name",
            comment_lines: ["The name of the item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          owner: {
            schema_name: "owner",
            schema_url: "https://schema.org/owner",
            comment_lines: ["A person or organization who owns this Thing."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: "owns",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          potential_action: {
            schema_name: "potentialAction",
            schema_url: "https://schema.org/potentialAction",
            comment_lines: ["Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."].freeze,
            ranges: ["Action"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          same_as: {
            schema_name: "sameAs",
            schema_url: "https://schema.org/sameAs",
            comment_lines: ["URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          subject_of: {
            schema_name: "subjectOf",
            schema_url: "https://schema.org/subjectOf",
            comment_lines: ["A CreativeWork or Event about this Thing."].freeze,
            ranges: ["CreativeWork", "Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: "about",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          url: {
            schema_name: "url",
            schema_url: "https://schema.org/url",
            comment_lines: ["URL of the item."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the
      #     use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href="https://schema.org/docs/styleguide.html">style guide</a>.
      def additional_type
        read_property(:additional_type)
      end

      # An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. Typically the value is a URI-identified RDF class, and in this case corresponds to the
      #     use of rdf:type in RDF. Text values can be used sparingly, for cases where useful information can be added without their being an appropriate schema to reference. In the case of text values, the class label should follow the schema.org <a href="https://schema.org/docs/styleguide.html">style guide</a>.
      def additional_type=(value)
        write_property(:additional_type, value)
      end

      # An alias for the item.
      def alternate_name
        read_property(:alternate_name)
      end

      # An alias for the item.
      def alternate_name=(value)
        write_property(:alternate_name, value)
      end

      # A description of the item.
      def description
        read_property(:description)
      end

      # A description of the item.
      def description=(value)
        write_property(:description, value)
      end

      # A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
      def disambiguating_description
        read_property(:disambiguating_description)
      end

      # A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
      def disambiguating_description=(value)
        write_property(:disambiguating_description, value)
      end

      # The identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.
      def identifier
        read_property(:identifier)
      end

      # The identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.
      def identifier=(value)
        write_property(:identifier, value)
      end

      # An image of the item. This can be a [[URL]] or a fully described [[ImageObject]].
      def image
        read_property(:image)
      end

      # An image of the item. This can be a [[URL]] or a fully described [[ImageObject]].
      def image=(value)
        write_property(:image, value)
      end

      # Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details.
      # Inverse-property: `mainEntity`.
      def main_entity_of_page
        read_property(:main_entity_of_page)
      end

      # Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details.
      # Inverse-property: `mainEntity`.
      def main_entity_of_page=(value)
        write_property(:main_entity_of_page, value)
      end

      # The name of the item.
      def name
        read_property(:name)
      end

      # The name of the item.
      def name=(value)
        write_property(:name, value)
      end

      # A person or organization who owns this Thing.
      # Inverse-property: `owns`.
      def owner
        read_property(:owner)
      end

      # A person or organization who owns this Thing.
      # Inverse-property: `owns`.
      def owner=(value)
        write_property(:owner, value)
      end

      # Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
      def potential_action
        read_property(:potential_action)
      end

      # Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
      def potential_action=(value)
        write_property(:potential_action, value)
      end

      # URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
      def same_as
        read_property(:same_as)
      end

      # URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
      def same_as=(value)
        write_property(:same_as, value)
      end

      # A CreativeWork or Event about this Thing.
      # Inverse-property: `about`.
      def subject_of
        read_property(:subject_of)
      end

      # A CreativeWork or Event about this Thing.
      # Inverse-property: `about`.
      def subject_of=(value)
        write_property(:subject_of, value)
      end

      # URL of the item.
      def url
        read_property(:url)
      end

      # URL of the item.
      def url=(value)
        write_property(:url, value)
      end
    end
  end
end
