module SchemaOrg
  module Mixins
    module Thing

      def self.schema_property_definitions
        {
          :additional_type => {
            schema_name: "additionalType",
            ranges: ["Text", "URL"],
          }.freeze,
          :alternate_name => {
            schema_name: "alternateName",
            ranges: ["Text"],
          }.freeze,
          :description => {
            schema_name: "description",
            ranges: ["Text", "TextObject"],
          }.freeze,
          :disambiguating_description => {
            schema_name: "disambiguatingDescription",
            ranges: ["Text"],
          }.freeze,
          :identifier => {
            schema_name: "identifier",
            ranges: ["PropertyValue", "Text", "URL"],
          }.freeze,
          :image => {
            schema_name: "image",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :main_entity_of_page => {
            schema_name: "mainEntityOfPage",
            ranges: ["CreativeWork", "URL"],
          }.freeze,
          :name => {
            schema_name: "name",
            ranges: ["Text"],
          }.freeze,
          :owner => {
            schema_name: "owner",
            ranges: ["Organization", "Person"],
          }.freeze,
          :potential_action => {
            schema_name: "potentialAction",
            ranges: ["Action"],
          }.freeze,
          :same_as => {
            schema_name: "sameAs",
            ranges: ["URL"],
          }.freeze,
          :subject_of => {
            schema_name: "subjectOf",
            ranges: ["CreativeWork", "Event"],
          }.freeze,
          :url => {
            schema_name: "url",
            ranges: ["URL"],
          }.freeze,
        }.freeze
      end

      def additional_type
        read_property(:additional_type)
      end

      def additional_type=(value)
        write_property(:additional_type, value)
      end

      def alternate_name
        read_property(:alternate_name)
      end

      def alternate_name=(value)
        write_property(:alternate_name, value)
      end

      def description
        read_property(:description)
      end

      def description=(value)
        write_property(:description, value)
      end

      def disambiguating_description
        read_property(:disambiguating_description)
      end

      def disambiguating_description=(value)
        write_property(:disambiguating_description, value)
      end

      def identifier
        read_property(:identifier)
      end

      def identifier=(value)
        write_property(:identifier, value)
      end

      def image
        read_property(:image)
      end

      def image=(value)
        write_property(:image, value)
      end

      def main_entity_of_page
        read_property(:main_entity_of_page)
      end

      def main_entity_of_page=(value)
        write_property(:main_entity_of_page, value)
      end

      def name
        read_property(:name)
      end

      def name=(value)
        write_property(:name, value)
      end

      def owner
        read_property(:owner)
      end

      def owner=(value)
        write_property(:owner, value)
      end

      def potential_action
        read_property(:potential_action)
      end

      def potential_action=(value)
        write_property(:potential_action, value)
      end

      def same_as
        read_property(:same_as)
      end

      def same_as=(value)
        write_property(:same_as, value)
      end

      def subject_of
        read_property(:subject_of)
      end

      def subject_of=(value)
        write_property(:subject_of, value)
      end

      def url
        read_property(:url)
      end

      def url=(value)
        write_property(:url, value)
      end

    end
  end
end
