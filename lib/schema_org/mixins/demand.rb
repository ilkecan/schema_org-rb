module SchemaOrg
  module Mixins
    module Demand
      include Intangible

      def self.schema_property_definitions
        {
          :accepted_payment_method => {
            schema_name: "acceptedPaymentMethod",
            ranges: ["LoanOrCredit", "PaymentMethod", "Text"],
          }.freeze,
          :advance_booking_requirement => {
            schema_name: "advanceBookingRequirement",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :area_served => {
            schema_name: "areaServed",
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"],
          }.freeze,
          :availability => {
            schema_name: "availability",
            ranges: ["ItemAvailability"],
          }.freeze,
          :availability_ends => {
            schema_name: "availabilityEnds",
            ranges: ["Date", "DateTime", "Time"],
          }.freeze,
          :availability_starts => {
            schema_name: "availabilityStarts",
            ranges: ["Date", "DateTime", "Time"],
          }.freeze,
          :available_at_or_from => {
            schema_name: "availableAtOrFrom",
            ranges: ["Place"],
          }.freeze,
          :available_delivery_method => {
            schema_name: "availableDeliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
          :business_function => {
            schema_name: "businessFunction",
            ranges: ["BusinessFunction"],
          }.freeze,
          :delivery_lead_time => {
            schema_name: "deliveryLeadTime",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :eligible_customer_type => {
            schema_name: "eligibleCustomerType",
            ranges: ["BusinessEntityType"],
          }.freeze,
          :eligible_duration => {
            schema_name: "eligibleDuration",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :eligible_quantity => {
            schema_name: "eligibleQuantity",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :eligible_region => {
            schema_name: "eligibleRegion",
            ranges: ["GeoShape", "Place", "Text"],
          }.freeze,
          :eligible_transaction_volume => {
            schema_name: "eligibleTransactionVolume",
            ranges: ["PriceSpecification"],
          }.freeze,
          :gtin12 => {
            schema_name: "gtin12",
            ranges: ["Text"],
          }.freeze,
          :gtin13 => {
            schema_name: "gtin13",
            ranges: ["Text"],
          }.freeze,
          :gtin14 => {
            schema_name: "gtin14",
            ranges: ["Text"],
          }.freeze,
          :gtin8 => {
            schema_name: "gtin8",
            ranges: ["Text"],
          }.freeze,
          :includes_object => {
            schema_name: "includesObject",
            ranges: ["TypeAndQuantityNode"],
          }.freeze,
          :ineligible_region => {
            schema_name: "ineligibleRegion",
            ranges: ["GeoShape", "Place", "Text"],
          }.freeze,
          :inventory_level => {
            schema_name: "inventoryLevel",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :item_condition => {
            schema_name: "itemCondition",
            ranges: ["OfferItemCondition"],
          }.freeze,
          :item_offered => {
            schema_name: "itemOffered",
            ranges: ["AggregateOffer", "CreativeWork", "Event", "MenuItem", "Product", "Service", "Trip"],
          }.freeze,
          :mpn => {
            schema_name: "mpn",
            ranges: ["Text"],
          }.freeze,
          :price_specification => {
            schema_name: "priceSpecification",
            ranges: ["PriceSpecification"],
          }.freeze,
          :seller => {
            schema_name: "seller",
            ranges: ["Organization", "Person"],
          }.freeze,
          :serial_number => {
            schema_name: "serialNumber",
            ranges: ["Text"],
          }.freeze,
          :sku => {
            schema_name: "sku",
            ranges: ["Text"],
          }.freeze,
          :valid_from => {
            schema_name: "validFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :valid_through => {
            schema_name: "validThrough",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :warranty => {
            schema_name: "warranty",
            ranges: ["WarrantyPromise"],
          }.freeze,
        }.freeze
      end

      def accepted_payment_method
        read_property(:accepted_payment_method)
      end

      def accepted_payment_method=(value)
        write_property(:accepted_payment_method, value)
      end

      def advance_booking_requirement
        read_property(:advance_booking_requirement)
      end

      def advance_booking_requirement=(value)
        write_property(:advance_booking_requirement, value)
      end

      def area_served
        read_property(:area_served)
      end

      def area_served=(value)
        write_property(:area_served, value)
      end

      def availability
        read_property(:availability)
      end

      def availability=(value)
        write_property(:availability, value)
      end

      def availability_ends
        read_property(:availability_ends)
      end

      def availability_ends=(value)
        write_property(:availability_ends, value)
      end

      def availability_starts
        read_property(:availability_starts)
      end

      def availability_starts=(value)
        write_property(:availability_starts, value)
      end

      def available_at_or_from
        read_property(:available_at_or_from)
      end

      def available_at_or_from=(value)
        write_property(:available_at_or_from, value)
      end

      def available_delivery_method
        read_property(:available_delivery_method)
      end

      def available_delivery_method=(value)
        write_property(:available_delivery_method, value)
      end

      def business_function
        read_property(:business_function)
      end

      def business_function=(value)
        write_property(:business_function, value)
      end

      def delivery_lead_time
        read_property(:delivery_lead_time)
      end

      def delivery_lead_time=(value)
        write_property(:delivery_lead_time, value)
      end

      def eligible_customer_type
        read_property(:eligible_customer_type)
      end

      def eligible_customer_type=(value)
        write_property(:eligible_customer_type, value)
      end

      def eligible_duration
        read_property(:eligible_duration)
      end

      def eligible_duration=(value)
        write_property(:eligible_duration, value)
      end

      def eligible_quantity
        read_property(:eligible_quantity)
      end

      def eligible_quantity=(value)
        write_property(:eligible_quantity, value)
      end

      def eligible_region
        read_property(:eligible_region)
      end

      def eligible_region=(value)
        write_property(:eligible_region, value)
      end

      def eligible_transaction_volume
        read_property(:eligible_transaction_volume)
      end

      def eligible_transaction_volume=(value)
        write_property(:eligible_transaction_volume, value)
      end

      def gtin12
        read_property(:gtin12)
      end

      def gtin12=(value)
        write_property(:gtin12, value)
      end

      def gtin13
        read_property(:gtin13)
      end

      def gtin13=(value)
        write_property(:gtin13, value)
      end

      def gtin14
        read_property(:gtin14)
      end

      def gtin14=(value)
        write_property(:gtin14, value)
      end

      def gtin8
        read_property(:gtin8)
      end

      def gtin8=(value)
        write_property(:gtin8, value)
      end

      def includes_object
        read_property(:includes_object)
      end

      def includes_object=(value)
        write_property(:includes_object, value)
      end

      def ineligible_region
        read_property(:ineligible_region)
      end

      def ineligible_region=(value)
        write_property(:ineligible_region, value)
      end

      def inventory_level
        read_property(:inventory_level)
      end

      def inventory_level=(value)
        write_property(:inventory_level, value)
      end

      def item_condition
        read_property(:item_condition)
      end

      def item_condition=(value)
        write_property(:item_condition, value)
      end

      def item_offered
        read_property(:item_offered)
      end

      def item_offered=(value)
        write_property(:item_offered, value)
      end

      def mpn
        read_property(:mpn)
      end

      def mpn=(value)
        write_property(:mpn, value)
      end

      def price_specification
        read_property(:price_specification)
      end

      def price_specification=(value)
        write_property(:price_specification, value)
      end

      def seller
        read_property(:seller)
      end

      def seller=(value)
        write_property(:seller, value)
      end

      def serial_number
        read_property(:serial_number)
      end

      def serial_number=(value)
        write_property(:serial_number, value)
      end

      def sku
        read_property(:sku)
      end

      def sku=(value)
        write_property(:sku, value)
      end

      def valid_from
        read_property(:valid_from)
      end

      def valid_from=(value)
        write_property(:valid_from, value)
      end

      def valid_through
        read_property(:valid_through)
      end

      def valid_through=(value)
        write_property(:valid_through, value)
      end

      def warranty
        read_property(:warranty)
      end

      def warranty=(value)
        write_property(:warranty, value)
      end

    end
  end
end
