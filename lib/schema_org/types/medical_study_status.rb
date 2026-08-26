# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalStudyStatus
  #
  # The status of a medical study. Enumerated type.
  class MedicalStudyStatus < Base
    include Mixins::MedicalStudyStatus

    SCHEMA_NAME = "MedicalStudyStatus"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    ACTIVE_NOT_RECRUITING = EnumerationValue.new("ActiveNotRecruiting", [SchemaOrg::MedicalStudyStatus])
    COMPLETED = EnumerationValue.new("Completed", [SchemaOrg::MedicalStudyStatus])
    ENROLLING_BY_INVITATION = EnumerationValue.new("EnrollingByInvitation", [SchemaOrg::MedicalStudyStatus])
    NOT_YET_RECRUITING = EnumerationValue.new("NotYetRecruiting", [SchemaOrg::MedicalStudyStatus])
    RECRUITING = EnumerationValue.new("Recruiting", [SchemaOrg::MedicalStudyStatus])
    RESULTS_AVAILABLE = EnumerationValue.new("ResultsAvailable", [SchemaOrg::MedicalStudyStatus])
    RESULTS_NOT_AVAILABLE = EnumerationValue.new("ResultsNotAvailable", [SchemaOrg::MedicalStudyStatus])
    SUSPENDED = EnumerationValue.new("Suspended", [SchemaOrg::MedicalStudyStatus])
    TERMINATED = EnumerationValue.new("Terminated", [SchemaOrg::MedicalStudyStatus])
    WITHDRAWN = EnumerationValue.new("Withdrawn", [SchemaOrg::MedicalStudyStatus])
    VALUES = [ACTIVE_NOT_RECRUITING, COMPLETED, ENROLLING_BY_INVITATION, NOT_YET_RECRUITING, RECRUITING, RESULTS_AVAILABLE, RESULTS_NOT_AVAILABLE, SUSPENDED, TERMINATED, WITHDRAWN].freeze

    def self.values
      VALUES
    end
  end
end
