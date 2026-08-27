# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Certification
      include CreativeWork

      def self.schema_property_definitions
        {
          about: {
            schema_name: "about",
            schema_url: "https://schema.org/about",
            comment_lines: ["The subject matter of an object."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: "subjectOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          audit_date: {
            schema_name: "auditDate",
            schema_url: "https://schema.org/auditDate",
            comment_lines: ["Date when a certification was last audited. See also  [gs1:certificationAuditDate](https://www.gs1.org/voc/certificationAuditDate)."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          certification_identification: {
            schema_name: "certificationIdentification",
            schema_url: "https://schema.org/certificationIdentification",
            comment_lines: ["Identifier of a certification instance (as registered with an independent certification body). Typically this identifier can be used to consult and verify the certification instance. See also [gs1:certificationIdentification](https://www.gs1.org/voc/certificationIdentification)."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          certification_rating: {
            schema_name: "certificationRating",
            schema_url: "https://schema.org/certificationRating",
            comment_lines: ["Rating of a certification instance (as defined by an independent certification body). Typically this rating can be used to rate the level to which the requirements of the certification instance are fulfilled. See also [gs1:certificationValue](https://www.gs1.org/voc/certificationValue)."].freeze,
            ranges: ["Rating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          certification_status: {
            schema_name: "certificationStatus",
            schema_url: "https://schema.org/certificationStatus",
            comment_lines: ["Indicates the current status of a certification: active or inactive. See also  [gs1:certificationStatus](https://www.gs1.org/voc/certificationStatus)."].freeze,
            ranges: ["CertificationStatusEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_published: {
            schema_name: "datePublished",
            schema_url: "https://schema.org/datePublished",
            comment_lines: ["Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expires: {
            schema_name: "expires",
            schema_url: "https://schema.org/expires",
            comment_lines: ["Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_measurement: {
            schema_name: "hasMeasurement",
            schema_url: "https://schema.org/hasMeasurement",
            comment_lines: ["A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          issued_by: {
            schema_name: "issuedBy",
            schema_url: "https://schema.org/issuedBy",
            comment_lines: ["The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]]."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          logo: {
            schema_name: "logo",
            schema_url: "https://schema.org/logo",
            comment_lines: ["An associated logo."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_from: {
            schema_name: "validFrom",
            schema_url: "https://schema.org/validFrom",
            comment_lines: ["The date when the item becomes valid."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_in: {
            schema_name: "validIn",
            schema_url: "https://schema.org/validIn",
            comment_lines: ["The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]]."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The subject matter of an object.
      # Inverse-property: `subjectOf`.
      def about
        read_property(:about)
      end

      # The subject matter of an object.
      # Inverse-property: `subjectOf`.
      def about=(value)
        write_property(:about, value)
      end

      # Date when a certification was last audited. See also  [gs1:certificationAuditDate](https://www.gs1.org/voc/certificationAuditDate).
      def audit_date
        read_property(:audit_date)
      end

      # Date when a certification was last audited. See also  [gs1:certificationAuditDate](https://www.gs1.org/voc/certificationAuditDate).
      def audit_date=(value)
        write_property(:audit_date, value)
      end

      # Identifier of a certification instance (as registered with an independent certification body). Typically this identifier can be used to consult and verify the certification instance. See also [gs1:certificationIdentification](https://www.gs1.org/voc/certificationIdentification).
      def certification_identification
        read_property(:certification_identification)
      end

      # Identifier of a certification instance (as registered with an independent certification body). Typically this identifier can be used to consult and verify the certification instance. See also [gs1:certificationIdentification](https://www.gs1.org/voc/certificationIdentification).
      def certification_identification=(value)
        write_property(:certification_identification, value)
      end

      # Rating of a certification instance (as defined by an independent certification body). Typically this rating can be used to rate the level to which the requirements of the certification instance are fulfilled. See also [gs1:certificationValue](https://www.gs1.org/voc/certificationValue).
      def certification_rating
        read_property(:certification_rating)
      end

      # Rating of a certification instance (as defined by an independent certification body). Typically this rating can be used to rate the level to which the requirements of the certification instance are fulfilled. See also [gs1:certificationValue](https://www.gs1.org/voc/certificationValue).
      def certification_rating=(value)
        write_property(:certification_rating, value)
      end

      # Indicates the current status of a certification: active or inactive. See also  [gs1:certificationStatus](https://www.gs1.org/voc/certificationStatus).
      def certification_status
        read_property(:certification_status)
      end

      # Indicates the current status of a certification: active or inactive. See also  [gs1:certificationStatus](https://www.gs1.org/voc/certificationStatus).
      def certification_status=(value)
        write_property(:certification_status, value)
      end

      # Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued.
      def date_published
        read_property(:date_published)
      end

      # Date of first publication or broadcast. For example the date a [[CreativeWork]] was broadcast or a [[Certification]] was issued.
      def date_published=(value)
        write_property(:date_published, value)
      end

      # Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired.
      def expires
        read_property(:expires)
      end

      # Date the content expires and is no longer useful or available. For example a [[VideoObject]] or [[NewsArticle]] whose availability or relevance is time-limited, a [[ClaimReview]] fact check whose publisher wants to indicate that it may no longer be relevant (or helpful to highlight) after some date, or a [[Certification]] the validity has expired.
      def expires=(value)
        write_property(:expires, value)
      end

      # A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings.
      def has_measurement
        read_property(:has_measurement)
      end

      # A measurement of an item, For example, the inseam of pants, the wheel size of a bicycle, the gauge of a screw, or the carbon footprint measured for certification by an authority. Usually an exact measurement, but can also be a range of measurements for adjustable products, for example belts and ski bindings.
      def has_measurement=(value)
        write_property(:has_measurement, value)
      end

      # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
      def issued_by
        read_property(:issued_by)
      end

      # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
      def issued_by=(value)
        write_property(:issued_by, value)
      end

      # An associated logo.
      def logo
        read_property(:logo)
      end

      # An associated logo.
      def logo=(value)
        write_property(:logo, value)
      end

      # The date when the item becomes valid.
      def valid_from
        read_property(:valid_from)
      end

      # The date when the item becomes valid.
      def valid_from=(value)
        write_property(:valid_from, value)
      end

      # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
      def valid_in
        read_property(:valid_in)
      end

      # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
      def valid_in=(value)
        write_property(:valid_in, value)
      end
    end
  end
end
