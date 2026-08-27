# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module UpdateAction
      include Action

      def self.schema_property_definitions
        {
          collection: {
            schema_name: "collection",
            schema_url: "https://schema.org/collection",
            comment_lines: ["A sub property of object. The collection target of the action."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "targetCollection",
            supersedes: nil
          }.freeze,
          target_collection: {
            schema_name: "targetCollection",
            schema_url: "https://schema.org/targetCollection",
            comment_lines: ["A sub property of object. The collection target of the action."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "collection"
          }.freeze
        }.freeze
      end

      # A sub property of object. The collection target of the action.
      # Superseded by `targetCollection`.
      def collection
        read_property(:collection)
      end

      # A sub property of object. The collection target of the action.
      # Superseded by `targetCollection`.
      def collection=(value)
        write_property(:collection, value)
      end

      # A sub property of object. The collection target of the action.
      # Supersedes `collection`.
      def target_collection
        read_property(:target_collection)
      end

      # A sub property of object. The collection target of the action.
      # Supersedes `collection`.
      def target_collection=(value)
        write_property(:target_collection, value)
      end
    end
  end
end
