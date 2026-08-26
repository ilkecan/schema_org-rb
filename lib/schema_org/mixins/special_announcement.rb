# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SpecialAnnouncement
      include CreativeWork

      def self.schema_property_definitions
        {
          announcement_location: {
            schema_name: "announcementLocation",
            schema_url: "https://schema.org/announcementLocation",
            comment_lines: ["Indicates a specific [[CivicStructure]] or [[LocalBusiness]] associated with the SpecialAnnouncement. For example, a specific testing facility or business with special opening hours. For a larger geographic region like a quarantine of an entire region, use [[spatialCoverage]]."].freeze,
            ranges: ["CivicStructure", "LocalBusiness"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          category: {
            schema_name: "category",
            schema_url: "https://schema.org/category",
            comment_lines: ["A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."].freeze,
            ranges: ["CategoryCode", "PhysicalActivityCategory", "Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_posted: {
            schema_name: "datePosted",
            schema_url: "https://schema.org/datePosted",
            comment_lines: ["Publication date of an online listing."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          disease_prevention_info: {
            schema_name: "diseasePreventionInfo",
            schema_url: "https://schema.org/diseasePreventionInfo",
            comment_lines: ["Information about disease prevention."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          disease_spread_statistics: {
            schema_name: "diseaseSpreadStatistics",
            schema_url: "https://schema.org/diseaseSpreadStatistics",
            comment_lines: ["Statistical information about the spread of a disease, either as [[WebContent]], or", "  described directly as a [[Dataset]], or the specific [[Observation]]s in the dataset. When a [[WebContent]] URL is", "  provided, the page indicated might also contain more such markup."].freeze,
            ranges: ["Dataset", "Observation", "URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          getting_tested_info: {
            schema_name: "gettingTestedInfo",
            schema_url: "https://schema.org/gettingTestedInfo",
            comment_lines: ["Information about getting tested (for a [[MedicalCondition]]), e.g. in the context of a pandemic."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          government_benefits_info: {
            schema_name: "governmentBenefitsInfo",
            schema_url: "https://schema.org/governmentBenefitsInfo",
            comment_lines: ["governmentBenefitsInfo provides information about government benefits associated with a SpecialAnnouncement."].freeze,
            ranges: ["GovernmentService"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          news_updates_and_guidelines: {
            schema_name: "newsUpdatesAndGuidelines",
            schema_url: "https://schema.org/newsUpdatesAndGuidelines",
            comment_lines: ["Indicates a page with news updates and guidelines. This could often be (but is not required to be) the main page containing [[SpecialAnnouncement]] markup on a site."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          public_transport_closures_info: {
            schema_name: "publicTransportClosuresInfo",
            schema_url: "https://schema.org/publicTransportClosuresInfo",
            comment_lines: ["Information about public transport closures."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          quarantine_guidelines: {
            schema_name: "quarantineGuidelines",
            schema_url: "https://schema.org/quarantineGuidelines",
            comment_lines: ["Guidelines about quarantine rules, e.g. in the context of a pandemic."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          school_closures_info: {
            schema_name: "schoolClosuresInfo",
            schema_url: "https://schema.org/schoolClosuresInfo",
            comment_lines: ["Information about school closures."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          travel_bans: {
            schema_name: "travelBans",
            schema_url: "https://schema.org/travelBans",
            comment_lines: ["Information about travel bans, e.g. in the context of a pandemic."].freeze,
            ranges: ["URL", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          web_feed: {
            schema_name: "webFeed",
            schema_url: "https://schema.org/webFeed",
            comment_lines: ["The URL for a feed, e.g. associated with a podcast series, blog, or series of date-stamped updates. This is usually RSS or Atom."].freeze,
            ranges: ["DataFeed", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates a specific [[CivicStructure]] or [[LocalBusiness]] associated with the SpecialAnnouncement. For example, a specific testing facility or business with special opening hours. For a larger geographic region like a quarantine of an entire region, use [[spatialCoverage]].
      def announcement_location
        read_property(:announcement_location)
      end

      # Indicates a specific [[CivicStructure]] or [[LocalBusiness]] associated with the SpecialAnnouncement. For example, a specific testing facility or business with special opening hours. For a larger geographic region like a quarantine of an entire region, use [[spatialCoverage]].
      def announcement_location=(value)
        write_property(:announcement_location, value)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # Publication date of an online listing.
      def date_posted
        read_property(:date_posted)
      end

      # Publication date of an online listing.
      def date_posted=(value)
        write_property(:date_posted, value)
      end

      # Information about disease prevention.
      def disease_prevention_info
        read_property(:disease_prevention_info)
      end

      # Information about disease prevention.
      def disease_prevention_info=(value)
        write_property(:disease_prevention_info, value)
      end

      # Statistical information about the spread of a disease, either as [[WebContent]], or
      #   described directly as a [[Dataset]], or the specific [[Observation]]s in the dataset. When a [[WebContent]] URL is
      #   provided, the page indicated might also contain more such markup.
      def disease_spread_statistics
        read_property(:disease_spread_statistics)
      end

      # Statistical information about the spread of a disease, either as [[WebContent]], or
      #   described directly as a [[Dataset]], or the specific [[Observation]]s in the dataset. When a [[WebContent]] URL is
      #   provided, the page indicated might also contain more such markup.
      def disease_spread_statistics=(value)
        write_property(:disease_spread_statistics, value)
      end

      # Information about getting tested (for a [[MedicalCondition]]), e.g. in the context of a pandemic.
      def getting_tested_info
        read_property(:getting_tested_info)
      end

      # Information about getting tested (for a [[MedicalCondition]]), e.g. in the context of a pandemic.
      def getting_tested_info=(value)
        write_property(:getting_tested_info, value)
      end

      # governmentBenefitsInfo provides information about government benefits associated with a SpecialAnnouncement.
      def government_benefits_info
        read_property(:government_benefits_info)
      end

      # governmentBenefitsInfo provides information about government benefits associated with a SpecialAnnouncement.
      def government_benefits_info=(value)
        write_property(:government_benefits_info, value)
      end

      # Indicates a page with news updates and guidelines. This could often be (but is not required to be) the main page containing [[SpecialAnnouncement]] markup on a site.
      def news_updates_and_guidelines
        read_property(:news_updates_and_guidelines)
      end

      # Indicates a page with news updates and guidelines. This could often be (but is not required to be) the main page containing [[SpecialAnnouncement]] markup on a site.
      def news_updates_and_guidelines=(value)
        write_property(:news_updates_and_guidelines, value)
      end

      # Information about public transport closures.
      def public_transport_closures_info
        read_property(:public_transport_closures_info)
      end

      # Information about public transport closures.
      def public_transport_closures_info=(value)
        write_property(:public_transport_closures_info, value)
      end

      # Guidelines about quarantine rules, e.g. in the context of a pandemic.
      def quarantine_guidelines
        read_property(:quarantine_guidelines)
      end

      # Guidelines about quarantine rules, e.g. in the context of a pandemic.
      def quarantine_guidelines=(value)
        write_property(:quarantine_guidelines, value)
      end

      # Information about school closures.
      def school_closures_info
        read_property(:school_closures_info)
      end

      # Information about school closures.
      def school_closures_info=(value)
        write_property(:school_closures_info, value)
      end

      # Information about travel bans, e.g. in the context of a pandemic.
      def travel_bans
        read_property(:travel_bans)
      end

      # Information about travel bans, e.g. in the context of a pandemic.
      def travel_bans=(value)
        write_property(:travel_bans, value)
      end

      # The URL for a feed, e.g. associated with a podcast series, blog, or series of date-stamped updates. This is usually RSS or Atom.
      def web_feed
        read_property(:web_feed)
      end

      # The URL for a feed, e.g. associated with a podcast series, blog, or series of date-stamped updates. This is usually RSS or Atom.
      def web_feed=(value)
        write_property(:web_feed, value)
      end
    end
  end
end
