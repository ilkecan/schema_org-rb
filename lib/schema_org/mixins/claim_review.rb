module SchemaOrg
  module Mixins
    module ClaimReview
      include Review

      def self.schema_property_definitions
        {
          :claim_reviewed => {
            schema_name: "claimReviewed",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def claim_reviewed
        read_property(:claim_reviewed)
      end

      def claim_reviewed=(value)
        write_property(:claim_reviewed, value)
      end

    end
  end
end
