# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module FollowAction
      include InteractAction

      def self.schema_property_definitions
        {
          followee: {
            schema_name: "followee",
            schema_url: "https://schema.org/followee",
            comment_lines: ["A sub property of object. The person or organization being followed."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of object. The person or organization being followed.
      def followee
        read_property(:followee)
      end

      # A sub property of object. The person or organization being followed.
      def followee=(value)
        write_property(:followee, value)
      end
    end
  end
end
