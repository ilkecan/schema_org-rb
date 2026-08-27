# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Legislation
      include CreativeWork

      def self.schema_property_definitions
        {
          jurisdiction: {
            schema_name: "jurisdiction",
            schema_url: "https://schema.org/jurisdiction",
            comment_lines: ["Indicates a legal jurisdiction, e.g. of some legislation, or where some government service is based."].freeze,
            ranges: ["AdministrativeArea", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_amends: {
            schema_name: "legislationAmends",
            schema_url: "https://schema.org/legislationAmends",
            comment_lines: ["Another legislation that this legislation amends, introducing legal changes."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_applies: {
            schema_name: "legislationApplies",
            schema_url: "https://schema.org/legislationApplies",
            comment_lines: ["Indicates that this legislation (or part of a legislation) somehow transfers another legislation in a different legislative context. This is an informative link, and it has no legal value. For legally-binding links of transposition, use the <a href=\"/legislationTransposes\">legislationTransposes</a> property. For example an informative consolidated law of a European Union's member state \"applies\" the consolidated version of the European Directive implemented in it."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_changes: {
            schema_name: "legislationChanges",
            schema_url: "https://schema.org/legislationChanges",
            comment_lines: ["Another legislation that this legislation changes. This encompasses the notions of amendment, replacement, correction, repeal, or other types of change. This may be a direct change (textual or non-textual amendment) or a consequential or indirect change. The property is to be used to express the existence of a change relationship between two acts rather than the existence of a consolidated version of the text that shows the result of the change. For consolidation relationships, use the <a href=\"/legislationConsolidates\">legislationConsolidates</a> property."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_commences: {
            schema_name: "legislationCommences",
            schema_url: "https://schema.org/legislationCommences",
            comment_lines: ["Another legislation that this one sets into force."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_consolidates: {
            schema_name: "legislationConsolidates",
            schema_url: "https://schema.org/legislationConsolidates",
            comment_lines: ["Indicates another legislation taken into account in this consolidated legislation (which is usually the product of an editorial process that revises the legislation). This property should be used multiple times to refer to both the original version or the previous consolidated version, and to the legislations making the change."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_corrects: {
            schema_name: "legislationCorrects",
            schema_url: "https://schema.org/legislationCorrects",
            comment_lines: ["Another legislation in which this one introduces textual changes, like correction of spelling mistakes, with no legal impact (for modifications that have legal impact, use <a href=\"/legislationAmends\">legislationAmends</a>)."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_countersigned_by: {
            schema_name: "legislationCountersignedBy",
            schema_url: "https://schema.org/legislationCountersignedBy",
            comment_lines: ["The person or organization that countersigned the legislation. Depending on the legal context, a countersignature can indicate that the signed authority undertakes to assume responsibility for texts emanating from a person who is inviolable and irresponsible, (for example a King, Grand Duc or President), or that the authority is in charge of the implementation of the text."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_date: {
            schema_name: "legislationDate",
            schema_url: "https://schema.org/legislationDate",
            comment_lines: ["The date of adoption or signature of the legislation. This is the date at which the text is officially aknowledged to be a legislation, even though it might not even be published or in force."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_date_of_applicability: {
            schema_name: "legislationDateOfApplicability",
            schema_url: "https://schema.org/legislationDateOfApplicability",
            comment_lines: ["The date at which the Legislation becomes applicable. This can sometimes be distinct from the date of entry into force : a text may come in force today, and state it will become applicable in 3 months."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_date_version: {
            schema_name: "legislationDateVersion",
            schema_url: "https://schema.org/legislationDateVersion",
            comment_lines: ["The point-in-time at which the provided description of the legislation is valid (e.g.: when looking at the law on the 2016-04-07 (= dateVersion), I get the consolidation of 2015-04-12 of the \"National Insurance Contributions Act 2015\")"].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_ensures_implementation_of: {
            schema_name: "legislationEnsuresImplementationOf",
            schema_url: "https://schema.org/legislationEnsuresImplementationOf",
            comment_lines: ["Indicates that this Legislation ensures the implementation of another Legislation, for example by modifying national legislations so that they do not contradict to an EU regulation or decision. This implies a legal meaning. Transpositions of EU Directive should be captured with <a href=\"/legislationTransposes\">legislationTransposes</a>."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_identifier: {
            schema_name: "legislationIdentifier",
            schema_url: "https://schema.org/legislationIdentifier",
            comment_lines: ["An identifier for the legislation. This can be either a string-based identifier, like the CELEX at EU level or the NOR in France, or a web-based, URL/URI identifier, like an ELI (European Legislation Identifier) or an URN-Lex."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_jurisdiction: {
            schema_name: "legislationJurisdiction",
            schema_url: "https://schema.org/legislationJurisdiction",
            comment_lines: ["The jurisdiction from which the legislation originates."].freeze,
            ranges: ["AdministrativeArea", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_legal_force: {
            schema_name: "legislationLegalForce",
            schema_url: "https://schema.org/legislationLegalForce",
            comment_lines: ["Whether the legislation is currently in force, not in force, or partially in force."].freeze,
            ranges: ["LegalForceStatus"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_passed_by: {
            schema_name: "legislationPassedBy",
            schema_url: "https://schema.org/legislationPassedBy",
            comment_lines: ["The person or organization that originally passed or made the law: typically parliament (for primary legislation) or government (for secondary legislation). This indicates the \"legal author\" of the law, as opposed to its physical author."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_repeals: {
            schema_name: "legislationRepeals",
            schema_url: "https://schema.org/legislationRepeals",
            comment_lines: ["Another legislation that this legislation repeals (cancels, abrogates)."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_responsible: {
            schema_name: "legislationResponsible",
            schema_url: "https://schema.org/legislationResponsible",
            comment_lines: ["An individual or organization that has some kind of responsibility for the legislation. Typically the ministry who is/was in charge of elaborating the legislation, or the adressee for potential questions about the legislation once it is published."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_transposes: {
            schema_name: "legislationTransposes",
            schema_url: "https://schema.org/legislationTransposes",
            comment_lines: ["Indicates that this legislation (or part of legislation) fulfills the objectives set by another legislation, by passing appropriate implementation measures. Typically, some legislations of European Union's member states or regions transpose European Directives. This indicates a legally binding link between the 2 legislations."].freeze,
            ranges: ["Legislation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legislation_type: {
            schema_name: "legislationType",
            schema_url: "https://schema.org/legislationType",
            comment_lines: ["The type of the legislation. Examples of values are \"law\", \"act\", \"directive\", \"decree\", \"regulation\", \"statutory instrument\", \"loi organique\", \"règlement grand-ducal\", etc., depending on the country."].freeze,
            ranges: ["CategoryCode", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates a legal jurisdiction, e.g. of some legislation, or where some government service is based.
      def jurisdiction
        read_property(:jurisdiction)
      end

      # Indicates a legal jurisdiction, e.g. of some legislation, or where some government service is based.
      def jurisdiction=(value)
        write_property(:jurisdiction, value)
      end

      # Another legislation that this legislation amends, introducing legal changes.
      def legislation_amends
        read_property(:legislation_amends)
      end

      # Another legislation that this legislation amends, introducing legal changes.
      def legislation_amends=(value)
        write_property(:legislation_amends, value)
      end

      # Indicates that this legislation (or part of a legislation) somehow transfers another legislation in a different legislative context. This is an informative link, and it has no legal value. For legally-binding links of transposition, use the <a href="/legislationTransposes">legislationTransposes</a> property. For example an informative consolidated law of a European Union's member state "applies" the consolidated version of the European Directive implemented in it.
      def legislation_applies
        read_property(:legislation_applies)
      end

      # Indicates that this legislation (or part of a legislation) somehow transfers another legislation in a different legislative context. This is an informative link, and it has no legal value. For legally-binding links of transposition, use the <a href="/legislationTransposes">legislationTransposes</a> property. For example an informative consolidated law of a European Union's member state "applies" the consolidated version of the European Directive implemented in it.
      def legislation_applies=(value)
        write_property(:legislation_applies, value)
      end

      # Another legislation that this legislation changes. This encompasses the notions of amendment, replacement, correction, repeal, or other types of change. This may be a direct change (textual or non-textual amendment) or a consequential or indirect change. The property is to be used to express the existence of a change relationship between two acts rather than the existence of a consolidated version of the text that shows the result of the change. For consolidation relationships, use the <a href="/legislationConsolidates">legislationConsolidates</a> property.
      def legislation_changes
        read_property(:legislation_changes)
      end

      # Another legislation that this legislation changes. This encompasses the notions of amendment, replacement, correction, repeal, or other types of change. This may be a direct change (textual or non-textual amendment) or a consequential or indirect change. The property is to be used to express the existence of a change relationship between two acts rather than the existence of a consolidated version of the text that shows the result of the change. For consolidation relationships, use the <a href="/legislationConsolidates">legislationConsolidates</a> property.
      def legislation_changes=(value)
        write_property(:legislation_changes, value)
      end

      # Another legislation that this one sets into force.
      def legislation_commences
        read_property(:legislation_commences)
      end

      # Another legislation that this one sets into force.
      def legislation_commences=(value)
        write_property(:legislation_commences, value)
      end

      # Indicates another legislation taken into account in this consolidated legislation (which is usually the product of an editorial process that revises the legislation). This property should be used multiple times to refer to both the original version or the previous consolidated version, and to the legislations making the change.
      def legislation_consolidates
        read_property(:legislation_consolidates)
      end

      # Indicates another legislation taken into account in this consolidated legislation (which is usually the product of an editorial process that revises the legislation). This property should be used multiple times to refer to both the original version or the previous consolidated version, and to the legislations making the change.
      def legislation_consolidates=(value)
        write_property(:legislation_consolidates, value)
      end

      # Another legislation in which this one introduces textual changes, like correction of spelling mistakes, with no legal impact (for modifications that have legal impact, use <a href="/legislationAmends">legislationAmends</a>).
      def legislation_corrects
        read_property(:legislation_corrects)
      end

      # Another legislation in which this one introduces textual changes, like correction of spelling mistakes, with no legal impact (for modifications that have legal impact, use <a href="/legislationAmends">legislationAmends</a>).
      def legislation_corrects=(value)
        write_property(:legislation_corrects, value)
      end

      # The person or organization that countersigned the legislation. Depending on the legal context, a countersignature can indicate that the signed authority undertakes to assume responsibility for texts emanating from a person who is inviolable and irresponsible, (for example a King, Grand Duc or President), or that the authority is in charge of the implementation of the text.
      def legislation_countersigned_by
        read_property(:legislation_countersigned_by)
      end

      # The person or organization that countersigned the legislation. Depending on the legal context, a countersignature can indicate that the signed authority undertakes to assume responsibility for texts emanating from a person who is inviolable and irresponsible, (for example a King, Grand Duc or President), or that the authority is in charge of the implementation of the text.
      def legislation_countersigned_by=(value)
        write_property(:legislation_countersigned_by, value)
      end

      # The date of adoption or signature of the legislation. This is the date at which the text is officially aknowledged to be a legislation, even though it might not even be published or in force.
      def legislation_date
        read_property(:legislation_date)
      end

      # The date of adoption or signature of the legislation. This is the date at which the text is officially aknowledged to be a legislation, even though it might not even be published or in force.
      def legislation_date=(value)
        write_property(:legislation_date, value)
      end

      # The date at which the Legislation becomes applicable. This can sometimes be distinct from the date of entry into force : a text may come in force today, and state it will become applicable in 3 months.
      def legislation_date_of_applicability
        read_property(:legislation_date_of_applicability)
      end

      # The date at which the Legislation becomes applicable. This can sometimes be distinct from the date of entry into force : a text may come in force today, and state it will become applicable in 3 months.
      def legislation_date_of_applicability=(value)
        write_property(:legislation_date_of_applicability, value)
      end

      # The point-in-time at which the provided description of the legislation is valid (e.g.: when looking at the law on the 2016-04-07 (= dateVersion), I get the consolidation of 2015-04-12 of the "National Insurance Contributions Act 2015")
      def legislation_date_version
        read_property(:legislation_date_version)
      end

      # The point-in-time at which the provided description of the legislation is valid (e.g.: when looking at the law on the 2016-04-07 (= dateVersion), I get the consolidation of 2015-04-12 of the "National Insurance Contributions Act 2015")
      def legislation_date_version=(value)
        write_property(:legislation_date_version, value)
      end

      # Indicates that this Legislation ensures the implementation of another Legislation, for example by modifying national legislations so that they do not contradict to an EU regulation or decision. This implies a legal meaning. Transpositions of EU Directive should be captured with <a href="/legislationTransposes">legislationTransposes</a>.
      def legislation_ensures_implementation_of
        read_property(:legislation_ensures_implementation_of)
      end

      # Indicates that this Legislation ensures the implementation of another Legislation, for example by modifying national legislations so that they do not contradict to an EU regulation or decision. This implies a legal meaning. Transpositions of EU Directive should be captured with <a href="/legislationTransposes">legislationTransposes</a>.
      def legislation_ensures_implementation_of=(value)
        write_property(:legislation_ensures_implementation_of, value)
      end

      # An identifier for the legislation. This can be either a string-based identifier, like the CELEX at EU level or the NOR in France, or a web-based, URL/URI identifier, like an ELI (European Legislation Identifier) or an URN-Lex.
      def legislation_identifier
        read_property(:legislation_identifier)
      end

      # An identifier for the legislation. This can be either a string-based identifier, like the CELEX at EU level or the NOR in France, or a web-based, URL/URI identifier, like an ELI (European Legislation Identifier) or an URN-Lex.
      def legislation_identifier=(value)
        write_property(:legislation_identifier, value)
      end

      # The jurisdiction from which the legislation originates.
      def legislation_jurisdiction
        read_property(:legislation_jurisdiction)
      end

      # The jurisdiction from which the legislation originates.
      def legislation_jurisdiction=(value)
        write_property(:legislation_jurisdiction, value)
      end

      # Whether the legislation is currently in force, not in force, or partially in force.
      def legislation_legal_force
        read_property(:legislation_legal_force)
      end

      # Whether the legislation is currently in force, not in force, or partially in force.
      def legislation_legal_force=(value)
        write_property(:legislation_legal_force, value)
      end

      # The person or organization that originally passed or made the law: typically parliament (for primary legislation) or government (for secondary legislation). This indicates the "legal author" of the law, as opposed to its physical author.
      def legislation_passed_by
        read_property(:legislation_passed_by)
      end

      # The person or organization that originally passed or made the law: typically parliament (for primary legislation) or government (for secondary legislation). This indicates the "legal author" of the law, as opposed to its physical author.
      def legislation_passed_by=(value)
        write_property(:legislation_passed_by, value)
      end

      # Another legislation that this legislation repeals (cancels, abrogates).
      def legislation_repeals
        read_property(:legislation_repeals)
      end

      # Another legislation that this legislation repeals (cancels, abrogates).
      def legislation_repeals=(value)
        write_property(:legislation_repeals, value)
      end

      # An individual or organization that has some kind of responsibility for the legislation. Typically the ministry who is/was in charge of elaborating the legislation, or the adressee for potential questions about the legislation once it is published.
      def legislation_responsible
        read_property(:legislation_responsible)
      end

      # An individual or organization that has some kind of responsibility for the legislation. Typically the ministry who is/was in charge of elaborating the legislation, or the adressee for potential questions about the legislation once it is published.
      def legislation_responsible=(value)
        write_property(:legislation_responsible, value)
      end

      # Indicates that this legislation (or part of legislation) fulfills the objectives set by another legislation, by passing appropriate implementation measures. Typically, some legislations of European Union's member states or regions transpose European Directives. This indicates a legally binding link between the 2 legislations.
      def legislation_transposes
        read_property(:legislation_transposes)
      end

      # Indicates that this legislation (or part of legislation) fulfills the objectives set by another legislation, by passing appropriate implementation measures. Typically, some legislations of European Union's member states or regions transpose European Directives. This indicates a legally binding link between the 2 legislations.
      def legislation_transposes=(value)
        write_property(:legislation_transposes, value)
      end

      # The type of the legislation. Examples of values are "law", "act", "directive", "decree", "regulation", "statutory instrument", "loi organique", "règlement grand-ducal", etc., depending on the country.
      def legislation_type
        read_property(:legislation_type)
      end

      # The type of the legislation. Examples of values are "law", "act", "directive", "decree", "regulation", "statutory instrument", "loi organique", "règlement grand-ducal", etc., depending on the country.
      def legislation_type=(value)
        write_property(:legislation_type, value)
      end
    end
  end
end
