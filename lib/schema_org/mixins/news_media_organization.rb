# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module NewsMediaOrganization
      include Organization

      def self.schema_property_definitions
        {
          actionable_feedback_policy: {
            schema_name: "actionableFeedbackPolicy",
            schema_url: "https://schema.org/actionableFeedbackPolicy",
            comment_lines: ["For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          corrections_policy: {
            schema_name: "correctionsPolicy",
            schema_url: "https://schema.org/correctionsPolicy",
            comment_lines: ["For an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          diversity_policy: {
            schema_name: "diversityPolicy",
            schema_url: "https://schema.org/diversityPolicy",
            comment_lines: ["Statement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          diversity_staffing_report: {
            schema_name: "diversityStaffingReport",
            schema_url: "https://schema.org/diversityStaffingReport",
            comment_lines: ["For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported."].freeze,
            ranges: ["Article", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ethics_policy: {
            schema_name: "ethicsPolicy",
            schema_url: "https://schema.org/ethicsPolicy",
            comment_lines: ["Statement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          masthead: {
            schema_name: "masthead",
            schema_url: "https://schema.org/masthead",
            comment_lines: ["For a [[NewsMediaOrganization]], a link to the masthead page or a page listing top editorial management."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          mission_coverage_priorities_policy: {
            schema_name: "missionCoveragePrioritiesPolicy",
            schema_url: "https://schema.org/missionCoveragePrioritiesPolicy",
            comment_lines: ["For a [[NewsMediaOrganization]], a statement on coverage priorities, including any public agenda or stance on issues."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          no_bylines_policy: {
            schema_name: "noBylinesPolicy",
            schema_url: "https://schema.org/noBylinesPolicy",
            comment_lines: ["For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement explaining when authors of articles are not named in bylines."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ownership_funding_info: {
            schema_name: "ownershipFundingInfo",
            schema_url: "https://schema.org/ownershipFundingInfo",
            comment_lines: ["For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable."].freeze,
            ranges: ["AboutPage", "CreativeWork", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unnamed_sources_policy: {
            schema_name: "unnamedSourcesPolicy",
            schema_url: "https://schema.org/unnamedSourcesPolicy",
            comment_lines: ["For an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          verification_fact_checking_policy: {
            schema_name: "verificationFactCheckingPolicy",
            schema_url: "https://schema.org/verificationFactCheckingPolicy",
            comment_lines: ["Disclosure about verification and fact-checking processes for a [[NewsMediaOrganization]] or other fact-checking [[Organization]]."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication.
      def actionable_feedback_policy
        read_property(:actionable_feedback_policy)
      end

      # For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement about public engagement activities (for news media, the newsroom’s), including involving the public - digitally or otherwise -- in coverage decisions, reporting and activities after publication.
      def actionable_feedback_policy=(value)
        write_property(:actionable_feedback_policy, value)
      end

      # For an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors.
      def corrections_policy
        read_property(:corrections_policy)
      end

      # For an [[Organization]] (e.g. [[NewsMediaOrganization]]), a statement describing (in news media, the newsroom’s) disclosure and correction policy for errors.
      def corrections_policy=(value)
        write_property(:corrections_policy, value)
      end

      # Statement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data.
      def diversity_policy
        read_property(:diversity_policy)
      end

      # Statement on diversity policy by an [[Organization]] e.g. a [[NewsMediaOrganization]]. For a [[NewsMediaOrganization]], a statement describing the newsroom’s diversity policy on both staffing and sources, typically providing staffing data.
      def diversity_policy=(value)
        write_property(:diversity_policy, value)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported.
      def diversity_staffing_report
        read_property(:diversity_staffing_report)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a report on staffing diversity issues. In a news context this might be for example ASNE or RTDNA (US) reports, or self-reported.
      def diversity_staffing_report=(value)
        write_property(:diversity_staffing_report, value)
      end

      # Statement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization.
      def ethics_policy
        read_property(:ethics_policy)
      end

      # Statement about ethics policy, e.g. of a [[NewsMediaOrganization]] regarding journalistic and publishing practices, or of a [[Restaurant]], a page describing food source policies. In the case of a [[NewsMediaOrganization]], an ethicsPolicy is typically a statement describing the personal, organizational, and corporate standards of behavior expected by the organization.
      def ethics_policy=(value)
        write_property(:ethics_policy, value)
      end

      # For a [[NewsMediaOrganization]], a link to the masthead page or a page listing top editorial management.
      def masthead
        read_property(:masthead)
      end

      # For a [[NewsMediaOrganization]], a link to the masthead page or a page listing top editorial management.
      def masthead=(value)
        write_property(:masthead, value)
      end

      # For a [[NewsMediaOrganization]], a statement on coverage priorities, including any public agenda or stance on issues.
      def mission_coverage_priorities_policy
        read_property(:mission_coverage_priorities_policy)
      end

      # For a [[NewsMediaOrganization]], a statement on coverage priorities, including any public agenda or stance on issues.
      def mission_coverage_priorities_policy=(value)
        write_property(:mission_coverage_priorities_policy, value)
      end

      # For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement explaining when authors of articles are not named in bylines.
      def no_bylines_policy
        read_property(:no_bylines_policy)
      end

      # For a [[NewsMediaOrganization]] or other news-related [[Organization]], a statement explaining when authors of articles are not named in bylines.
      def no_bylines_policy=(value)
        write_property(:no_bylines_policy, value)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable.
      def ownership_funding_info
        read_property(:ownership_funding_info)
      end

      # For an [[Organization]] (often but not necessarily a [[NewsMediaOrganization]]), a description of organizational ownership structure; funding and grants. In a news/media setting, this is with particular reference to editorial independence.   Note that the [[funder]] is also available and can be used to make basic funder information machine-readable.
      def ownership_funding_info=(value)
        write_property(:ownership_funding_info, value)
      end

      # For an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required.
      def unnamed_sources_policy
        read_property(:unnamed_sources_policy)
      end

      # For an [[Organization]] (typically a [[NewsMediaOrganization]]), a statement about policy on use of unnamed sources and the decision process required.
      def unnamed_sources_policy=(value)
        write_property(:unnamed_sources_policy, value)
      end

      # Disclosure about verification and fact-checking processes for a [[NewsMediaOrganization]] or other fact-checking [[Organization]].
      def verification_fact_checking_policy
        read_property(:verification_fact_checking_policy)
      end

      # Disclosure about verification and fact-checking processes for a [[NewsMediaOrganization]] or other fact-checking [[Organization]].
      def verification_fact_checking_policy=(value)
        write_property(:verification_fact_checking_policy, value)
      end
    end
  end
end
