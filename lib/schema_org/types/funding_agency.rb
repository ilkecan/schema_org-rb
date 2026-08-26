# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/FundingAgency
  #
  # A FundingAgency is an organization that implements one or more [[FundingScheme]]s and manages
  #     the granting process (via [[Grant]]s, typically [[MonetaryGrant]]s).
  #     A funding agency is not always required for grant funding, e.g. philanthropic giving, corporate sponsorship etc.
  #
  # Examples of funding agencies include ERC, REA, NIH, Bill and Melinda Gates Foundation, ...
  class FundingAgency < Base
    include Mixins::FundingAgency

    SCHEMA_NAME = "FundingAgency"
    SCHEMA_TYPES = [self, SchemaOrg::Project, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
  end
end
