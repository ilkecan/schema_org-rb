module SchemaOrg
  # https://schema.org/DeliveryMethod
  #
  # A delivery method is a standardized procedure for transferring the product or service to the destination of fulfillment chosen by the customer. Delivery methods are characterized by the means of transportation used, and by the organization or group that is the contracting party for the sending organization or person.\n\nCommonly used values:\n\n* http://purl.org/goodrelations/v1#DeliveryModeDirectDownload\n* http://purl.org/goodrelations/v1#DeliveryModeFreight\n* http://purl.org/goodrelations/v1#DeliveryModeMail\n* http://purl.org/goodrelations/v1#DeliveryModeOwnFleet\n* http://purl.org/goodrelations/v1#DeliveryModePickUp\n* http://purl.org/goodrelations/v1#DHL\n* http://purl.org/goodrelations/v1#FederalExpress\n* http://purl.org/goodrelations/v1#UPS
  class DeliveryMethod < Base
    include Mixins::DeliveryMethod
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    LOCKER_DELIVERY = EnumerationValue.new("LockerDelivery", self, [SchemaOrg::DeliveryMethod]).freeze
    ON_SITE_PICKUP = EnumerationValue.new("OnSitePickup", self, [SchemaOrg::DeliveryMethod]).freeze
    PARCEL_SERVICE = EnumerationValue.new("ParcelService", self, [SchemaOrg::DeliveryMethod]).freeze
    VALUES = [LOCKER_DELIVERY, ON_SITE_PICKUP, PARCEL_SERVICE].freeze

    def self.values
      VALUES
    end
  end
end
