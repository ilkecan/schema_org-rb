module SchemaOrg
  module Mixins
    module PeopleAudience
      include Audience

      def self.schema_property_definitions
        {
          :required_gender => {
            schema_name: "requiredGender",
            ranges: ["Text"],
          }.freeze,
          :required_max_age => {
            schema_name: "requiredMaxAge",
            ranges: ["Integer"],
          }.freeze,
          :required_min_age => {
            schema_name: "requiredMinAge",
            ranges: ["Integer"],
          }.freeze,
          :suggested_gender => {
            schema_name: "suggestedGender",
            ranges: ["GenderType", "Text"],
          }.freeze,
          :suggested_max_age => {
            schema_name: "suggestedMaxAge",
            ranges: ["Number"],
          }.freeze,
          :suggested_min_age => {
            schema_name: "suggestedMinAge",
            ranges: ["Number"],
          }.freeze,
        }.freeze
      end

      def required_gender
        read_property(:required_gender)
      end

      def required_gender=(value)
        write_property(:required_gender, value)
      end

      def required_max_age
        read_property(:required_max_age)
      end

      def required_max_age=(value)
        write_property(:required_max_age, value)
      end

      def required_min_age
        read_property(:required_min_age)
      end

      def required_min_age=(value)
        write_property(:required_min_age, value)
      end

      def suggested_gender
        read_property(:suggested_gender)
      end

      def suggested_gender=(value)
        write_property(:suggested_gender, value)
      end

      def suggested_max_age
        read_property(:suggested_max_age)
      end

      def suggested_max_age=(value)
        write_property(:suggested_max_age, value)
      end

      def suggested_min_age
        read_property(:suggested_min_age)
      end

      def suggested_min_age=(value)
        write_property(:suggested_min_age, value)
      end

    end
  end
end
