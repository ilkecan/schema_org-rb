module SchemaOrg
  module Mixins
    module WebPage
      include CreativeWork

      def self.schema_property_definitions
        {
          :breadcrumb => {
            schema_name: "breadcrumb",
            ranges: ["BreadcrumbList", "Text"],
          }.freeze,
          :last_reviewed => {
            schema_name: "lastReviewed",
            ranges: ["Date"],
          }.freeze,
          :main_content_of_page => {
            schema_name: "mainContentOfPage",
            ranges: ["WebPageElement"],
          }.freeze,
          :primary_image_of_page => {
            schema_name: "primaryImageOfPage",
            ranges: ["ImageObject"],
          }.freeze,
          :related_link => {
            schema_name: "relatedLink",
            ranges: ["URL"],
          }.freeze,
          :reviewed_by => {
            schema_name: "reviewedBy",
            ranges: ["Organization", "Person"],
          }.freeze,
          :significant_link => {
            schema_name: "significantLink",
            ranges: ["URL"],
          }.freeze,
          :significant_links => {
            schema_name: "significantLinks",
            ranges: ["URL"],
          }.freeze,
          :speakable => {
            schema_name: "speakable",
            ranges: ["SpeakableSpecification", "URL"],
          }.freeze,
          :specialty => {
            schema_name: "specialty",
            ranges: ["Specialty"],
          }.freeze,
        }.freeze
      end

      def breadcrumb
        read_property(:breadcrumb)
      end

      def breadcrumb=(value)
        write_property(:breadcrumb, value)
      end

      def last_reviewed
        read_property(:last_reviewed)
      end

      def last_reviewed=(value)
        write_property(:last_reviewed, value)
      end

      def main_content_of_page
        read_property(:main_content_of_page)
      end

      def main_content_of_page=(value)
        write_property(:main_content_of_page, value)
      end

      def primary_image_of_page
        read_property(:primary_image_of_page)
      end

      def primary_image_of_page=(value)
        write_property(:primary_image_of_page, value)
      end

      def related_link
        read_property(:related_link)
      end

      def related_link=(value)
        write_property(:related_link, value)
      end

      def reviewed_by
        read_property(:reviewed_by)
      end

      def reviewed_by=(value)
        write_property(:reviewed_by, value)
      end

      def significant_link
        read_property(:significant_link)
      end

      def significant_link=(value)
        write_property(:significant_link, value)
      end

      def significant_links
        read_property(:significant_links)
      end

      def significant_links=(value)
        write_property(:significant_links, value)
      end

      def speakable
        read_property(:speakable)
      end

      def speakable=(value)
        write_property(:speakable, value)
      end

      def specialty
        read_property(:specialty)
      end

      def specialty=(value)
        write_property(:specialty, value)
      end

    end
  end
end
