module SchemaOrg
  module Mixins
    module ParentAudience
      include PeopleAudience

      def self.schema_property_definitions
        {
          :child_max_age => {
            schema_name: "childMaxAge",
            ranges: ["Number"],
          }.freeze,
          :child_min_age => {
            schema_name: "childMinAge",
            ranges: ["Number"],
          }.freeze,
        }.freeze
      end

      def child_max_age
        read_property(:child_max_age)
      end

      def child_max_age=(value)
        write_property(:child_max_age, value)
      end

      def child_min_age
        read_property(:child_min_age)
      end

      def child_min_age=(value)
        write_property(:child_min_age, value)
      end

    end
  end
end
