module SchemaOrg
  module Mixins
    module NutritionInformation
      include StructuredValue

      def self.schema_property_definitions
        {
          :calories => {
            schema_name: "calories",
            ranges: ["Energy"],
          }.freeze,
          :carbohydrate_content => {
            schema_name: "carbohydrateContent",
            ranges: ["Mass"],
          }.freeze,
          :cholesterol_content => {
            schema_name: "cholesterolContent",
            ranges: ["Mass"],
          }.freeze,
          :fat_content => {
            schema_name: "fatContent",
            ranges: ["Mass"],
          }.freeze,
          :fiber_content => {
            schema_name: "fiberContent",
            ranges: ["Mass"],
          }.freeze,
          :protein_content => {
            schema_name: "proteinContent",
            ranges: ["Mass"],
          }.freeze,
          :saturated_fat_content => {
            schema_name: "saturatedFatContent",
            ranges: ["Mass"],
          }.freeze,
          :serving_size => {
            schema_name: "servingSize",
            ranges: ["Text"],
          }.freeze,
          :sodium_content => {
            schema_name: "sodiumContent",
            ranges: ["Mass"],
          }.freeze,
          :sugar_content => {
            schema_name: "sugarContent",
            ranges: ["Mass"],
          }.freeze,
          :trans_fat_content => {
            schema_name: "transFatContent",
            ranges: ["Mass"],
          }.freeze,
          :unsaturated_fat_content => {
            schema_name: "unsaturatedFatContent",
            ranges: ["Mass"],
          }.freeze,
        }.freeze
      end

      def calories
        read_property(:calories)
      end

      def calories=(value)
        write_property(:calories, value)
      end

      def carbohydrate_content
        read_property(:carbohydrate_content)
      end

      def carbohydrate_content=(value)
        write_property(:carbohydrate_content, value)
      end

      def cholesterol_content
        read_property(:cholesterol_content)
      end

      def cholesterol_content=(value)
        write_property(:cholesterol_content, value)
      end

      def fat_content
        read_property(:fat_content)
      end

      def fat_content=(value)
        write_property(:fat_content, value)
      end

      def fiber_content
        read_property(:fiber_content)
      end

      def fiber_content=(value)
        write_property(:fiber_content, value)
      end

      def protein_content
        read_property(:protein_content)
      end

      def protein_content=(value)
        write_property(:protein_content, value)
      end

      def saturated_fat_content
        read_property(:saturated_fat_content)
      end

      def saturated_fat_content=(value)
        write_property(:saturated_fat_content, value)
      end

      def serving_size
        read_property(:serving_size)
      end

      def serving_size=(value)
        write_property(:serving_size, value)
      end

      def sodium_content
        read_property(:sodium_content)
      end

      def sodium_content=(value)
        write_property(:sodium_content, value)
      end

      def sugar_content
        read_property(:sugar_content)
      end

      def sugar_content=(value)
        write_property(:sugar_content, value)
      end

      def trans_fat_content
        read_property(:trans_fat_content)
      end

      def trans_fat_content=(value)
        write_property(:trans_fat_content, value)
      end

      def unsaturated_fat_content
        read_property(:unsaturated_fat_content)
      end

      def unsaturated_fat_content=(value)
        write_property(:unsaturated_fat_content, value)
      end

    end
  end
end
