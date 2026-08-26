module SchemaOrg
  module Mixins
    module TouristAttraction
      include Place

      def self.schema_property_definitions
        {
          :available_language => {
            schema_name: "availableLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :tourist_type => {
            schema_name: "touristType",
            ranges: ["Audience", "Text"],
          }.freeze,
        }.freeze
      end

      def available_language
        read_property(:available_language)
      end

      def available_language=(value)
        write_property(:available_language, value)
      end

      def tourist_type
        read_property(:tourist_type)
      end

      def tourist_type=(value)
        write_property(:tourist_type, value)
      end

    end
  end
end
