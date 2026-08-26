module SchemaOrg
  module Mixins
    module HowTo
      include CreativeWork

      def self.schema_property_definitions
        {
          :estimated_cost => {
            schema_name: "estimatedCost",
            ranges: ["MonetaryAmount", "Text"],
          }.freeze,
          :perform_time => {
            schema_name: "performTime",
            ranges: ["Duration"],
          }.freeze,
          :prep_time => {
            schema_name: "prepTime",
            ranges: ["Duration"],
          }.freeze,
          :step => {
            schema_name: "step",
            ranges: ["CreativeWork", "HowToSection", "HowToStep", "Text"],
          }.freeze,
          :steps => {
            schema_name: "steps",
            ranges: ["CreativeWork", "ItemList", "Text"],
          }.freeze,
          :supply => {
            schema_name: "supply",
            ranges: ["HowToSupply", "Text"],
          }.freeze,
          :tool => {
            schema_name: "tool",
            ranges: ["HowToTool", "Text"],
          }.freeze,
          :total_time => {
            schema_name: "totalTime",
            ranges: ["Duration"],
          }.freeze,
          :yield => {
            schema_name: "yield",
            ranges: ["QuantitativeValue", "Text"],
          }.freeze,
        }.freeze
      end

      def estimated_cost
        read_property(:estimated_cost)
      end

      def estimated_cost=(value)
        write_property(:estimated_cost, value)
      end

      def perform_time
        read_property(:perform_time)
      end

      def perform_time=(value)
        write_property(:perform_time, value)
      end

      def prep_time
        read_property(:prep_time)
      end

      def prep_time=(value)
        write_property(:prep_time, value)
      end

      def step
        read_property(:step)
      end

      def step=(value)
        write_property(:step, value)
      end

      def steps
        read_property(:steps)
      end

      def steps=(value)
        write_property(:steps, value)
      end

      def supply
        read_property(:supply)
      end

      def supply=(value)
        write_property(:supply, value)
      end

      def tool
        read_property(:tool)
      end

      def tool=(value)
        write_property(:tool, value)
      end

      def total_time
        read_property(:total_time)
      end

      def total_time=(value)
        write_property(:total_time, value)
      end

      def yield
        read_property(:yield)
      end

      def yield=(value)
        write_property(:yield, value)
      end

    end
  end
end
