# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module InfectiousDisease
      include MedicalCondition

      def self.schema_property_definitions
        {
          infectious_agent: {
            schema_name: "infectiousAgent",
            schema_url: "https://schema.org/infectiousAgent",
            comment_lines: ["The actual infectious agent, such as a specific bacterium."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          infectious_agent_class: {
            schema_name: "infectiousAgentClass",
            schema_url: "https://schema.org/infectiousAgentClass",
            comment_lines: ["The class of infectious agent (bacteria, prion, etc.) that causes the disease."].freeze,
            ranges: ["InfectiousAgentClass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          transmission_method: {
            schema_name: "transmissionMethod",
            schema_url: "https://schema.org/transmissionMethod",
            comment_lines: ["How the disease spreads, either as a route or vector, for example 'direct contact', 'Aedes aegypti', etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The actual infectious agent, such as a specific bacterium.
      def infectious_agent
        read_property(:infectious_agent)
      end

      # The actual infectious agent, such as a specific bacterium.
      def infectious_agent=(value)
        write_property(:infectious_agent, value)
      end

      # The class of infectious agent (bacteria, prion, etc.) that causes the disease.
      def infectious_agent_class
        read_property(:infectious_agent_class)
      end

      # The class of infectious agent (bacteria, prion, etc.) that causes the disease.
      def infectious_agent_class=(value)
        write_property(:infectious_agent_class, value)
      end

      # How the disease spreads, either as a route or vector, for example 'direct contact', 'Aedes aegypti', etc.
      def transmission_method
        read_property(:transmission_method)
      end

      # How the disease spreads, either as a route or vector, for example 'direct contact', 'Aedes aegypti', etc.
      def transmission_method=(value)
        write_property(:transmission_method, value)
      end
    end
  end
end
