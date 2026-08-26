# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalStudy
      include MedicalEntity

      def self.schema_property_definitions
        {
          health_condition: {
            schema_name: "healthCondition",
            schema_url: "https://schema.org/healthCondition",
            comment_lines: ["Specifying the health condition(s) of a patient, medical study, or other target audience."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sponsor: {
            schema_name: "sponsor",
            schema_url: "https://schema.org/sponsor",
            comment_lines: ["A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          status: {
            schema_name: "status",
            schema_url: "https://schema.org/status",
            comment_lines: ["The status of the study (enumerated)."].freeze,
            ranges: ["EventStatusType", "MedicalStudyStatus", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          study_location: {
            schema_name: "studyLocation",
            schema_url: "https://schema.org/studyLocation",
            comment_lines: ["The location in which the study is taking/took place."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          study_subject: {
            schema_name: "studySubject",
            schema_url: "https://schema.org/studySubject",
            comment_lines: ["A subject of the study, i.e. one of the medical conditions, therapies, devices, drugs, etc. investigated by the study."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifying the health condition(s) of a patient, medical study, or other target audience.
      def health_condition
        read_property(:health_condition)
      end

      # Specifying the health condition(s) of a patient, medical study, or other target audience.
      def health_condition=(value)
        write_property(:health_condition, value)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor
        read_property(:sponsor)
      end

      # A person or organization that supports a thing through a pledge, promise, or financial contribution. E.g. a sponsor of a Medical Study or a corporate sponsor of an event.
      def sponsor=(value)
        write_property(:sponsor, value)
      end

      # The status of the study (enumerated).
      def status
        read_property(:status)
      end

      # The status of the study (enumerated).
      def status=(value)
        write_property(:status, value)
      end

      # The location in which the study is taking/took place.
      def study_location
        read_property(:study_location)
      end

      # The location in which the study is taking/took place.
      def study_location=(value)
        write_property(:study_location, value)
      end

      # A subject of the study, i.e. one of the medical conditions, therapies, devices, drugs, etc. investigated by the study.
      def study_subject
        read_property(:study_subject)
      end

      # A subject of the study, i.e. one of the medical conditions, therapies, devices, drugs, etc. investigated by the study.
      def study_subject=(value)
        write_property(:study_subject, value)
      end
    end
  end
end
