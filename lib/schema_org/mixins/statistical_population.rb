# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module StatisticalPopulation
      include Intangible

      def self.schema_property_definitions
        {
          population_type: {
            schema_name: "populationType",
            schema_url: "https://schema.org/populationType",
            comment_lines: ["Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]]."].freeze,
            ranges: [].freeze,
            external_ranges: ["Class"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]].
      def population_type
        read_property(:population_type)
      end

      # Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]].
      def population_type=(value)
        write_property(:population_type, value)
      end
    end
  end
end
