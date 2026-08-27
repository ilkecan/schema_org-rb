# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MemberProgramTier
      include Intangible

      def self.schema_property_definitions
        {
          has_tier_benefit: {
            schema_name: "hasTierBenefit",
            schema_url: "https://schema.org/hasTierBenefit",
            comment_lines: ["A member benefit for a particular tier of a loyalty program."].freeze,
            ranges: ["TierBenefitEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_tier_requirement: {
            schema_name: "hasTierRequirement",
            schema_url: "https://schema.org/hasTierRequirement",
            comment_lines: ["A requirement for a user to join a membership tier, for example: a CreditCard if the tier requires sign up for a credit card, A UnitPriceSpecification if the user is required to pay a (periodic) fee, or a MonetaryAmount if the user needs to spend a minimum amount to join the tier. If a tier is free to join then this property does not need to be specified."].freeze,
            ranges: ["CreditCard", "MonetaryAmount", "Text", "UnitPriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_tier_of: {
            schema_name: "isTierOf",
            schema_url: "https://schema.org/isTierOf",
            comment_lines: ["The member program this tier is a part of."].freeze,
            ranges: ["MemberProgram"].freeze,
            external_ranges: [].freeze,
            inverse_of: "hasTiers",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          membership_points_earned: {
            schema_name: "membershipPointsEarned",
            schema_url: "https://schema.org/membershipPointsEarned",
            comment_lines: ["The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)"].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A member benefit for a particular tier of a loyalty program.
      def has_tier_benefit
        read_property(:has_tier_benefit)
      end

      # A member benefit for a particular tier of a loyalty program.
      def has_tier_benefit=(value)
        write_property(:has_tier_benefit, value)
      end

      # A requirement for a user to join a membership tier, for example: a CreditCard if the tier requires sign up for a credit card, A UnitPriceSpecification if the user is required to pay a (periodic) fee, or a MonetaryAmount if the user needs to spend a minimum amount to join the tier. If a tier is free to join then this property does not need to be specified.
      def has_tier_requirement
        read_property(:has_tier_requirement)
      end

      # A requirement for a user to join a membership tier, for example: a CreditCard if the tier requires sign up for a credit card, A UnitPriceSpecification if the user is required to pay a (periodic) fee, or a MonetaryAmount if the user needs to spend a minimum amount to join the tier. If a tier is free to join then this property does not need to be specified.
      def has_tier_requirement=(value)
        write_property(:has_tier_requirement, value)
      end

      # The member program this tier is a part of.
      # Inverse-property: `hasTiers`.
      def is_tier_of
        read_property(:is_tier_of)
      end

      # The member program this tier is a part of.
      # Inverse-property: `hasTiers`.
      def is_tier_of=(value)
        write_property(:is_tier_of, value)
      end

      # The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)
      def membership_points_earned
        read_property(:membership_points_earned)
      end

      # The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)
      def membership_points_earned=(value)
        write_property(:membership_points_earned, value)
      end
    end
  end
end
