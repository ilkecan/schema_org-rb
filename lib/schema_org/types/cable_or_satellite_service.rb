module SchemaOrg
  # https://schema.org/CableOrSatelliteService
  #
  # A service which provides access to media programming like TV or radio. Access may be via cable or satellite.
  class CableOrSatelliteService < Base
    include Mixins::CableOrSatelliteService
    SCHEMA_TYPES = [self, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
