# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module LocalBusiness
      include Organization
      include Place

      def self.schema_property_definitions
        {
          branch_of: {
            schema_name: "branchOf",
            schema_url: "https://schema.org/branchOf",
            comment_lines: ["The larger organization that this local business is a branch of, if any. Not to be confused with (anatomical) [[branch]]."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "parentOrganization",
            supersedes: nil
          }.freeze,
          currencies_accepted: {
            schema_name: "currenciesAccepted",
            schema_url: "https://schema.org/currenciesAccepted",
            comment_lines: ["The currency accepted.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          floor_level: {
            schema_name: "floorLevel",
            schema_url: "https://schema.org/floorLevel",
            comment_lines: ["The floor level for an [[Accommodation]] in a multi-storey building. Since counting", "  systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          opening_hours: {
            schema_name: "openingHours",
            schema_url: "https://schema.org/openingHours",
            comment_lines: ["The general opening hours for a business. Opening hours can be specified as a weekly time range, starting with days, then times per day. Multiple days can be listed with commas ',' separating each day. Day or time ranges are specified using a hyphen '-'.\\n\\n* Days are specified using the following two-letter combinations: ```Mo```, ```Tu```, ```We```, ```Th```, ```Fr```, ```Sa```, ```Su```.\\n* Times are specified using 24:00 format. For example, 3pm is specified as ```15:00```, 10am as ```10:00```. \\n* Here is an example: <code>&lt;time itemprop=\"openingHours\" datetime=&quot;Tu,Th 16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\\n* If a business is open 7 days a week, then it can be specified as <code>&lt;time itemprop=&quot;openingHours&quot; datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all day&lt;/time&gt;</code>."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          payment_accepted: {
            schema_name: "paymentAccepted",
            schema_url: "https://schema.org/paymentAccepted",
            comment_lines: ["Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_range: {
            schema_name: "priceRange",
            schema_url: "https://schema.org/priceRange",
            comment_lines: ["The price range of the business, for example ```$$$```."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The larger organization that this local business is a branch of, if any. Not to be confused with (anatomical) [[branch]].
      # Superseded by `parentOrganization`.
      def branch_of
        read_property(:branch_of)
      end

      # The larger organization that this local business is a branch of, if any. Not to be confused with (anatomical) [[branch]].
      # Superseded by `parentOrganization`.
      def branch_of=(value)
        write_property(:branch_of, value)
      end

      # The currency accepted.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def currencies_accepted
        read_property(:currencies_accepted)
      end

      # The currency accepted.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def currencies_accepted=(value)
        write_property(:currencies_accepted, value)
      end

      # The floor level for an [[Accommodation]] in a multi-storey building. Since counting
      #   systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible.
      def floor_level
        read_property(:floor_level)
      end

      # The floor level for an [[Accommodation]] in a multi-storey building. Since counting
      #   systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible.
      def floor_level=(value)
        write_property(:floor_level, value)
      end

      # The general opening hours for a business. Opening hours can be specified as a weekly time range, starting with days, then times per day. Multiple days can be listed with commas ',' separating each day. Day or time ranges are specified using a hyphen '-'.\n\n* Days are specified using the following two-letter combinations: ```Mo```, ```Tu```, ```We```, ```Th```, ```Fr```, ```Sa```, ```Su```.\n* Times are specified using 24:00 format. For example, 3pm is specified as ```15:00```, 10am as ```10:00```. \n* Here is an example: <code>&lt;time itemprop="openingHours" datetime=&quot;Tu,Th 16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n* If a business is open 7 days a week, then it can be specified as <code>&lt;time itemprop=&quot;openingHours&quot; datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all day&lt;/time&gt;</code>.
      def opening_hours
        read_property(:opening_hours)
      end

      # The general opening hours for a business. Opening hours can be specified as a weekly time range, starting with days, then times per day. Multiple days can be listed with commas ',' separating each day. Day or time ranges are specified using a hyphen '-'.\n\n* Days are specified using the following two-letter combinations: ```Mo```, ```Tu```, ```We```, ```Th```, ```Fr```, ```Sa```, ```Su```.\n* Times are specified using 24:00 format. For example, 3pm is specified as ```15:00```, 10am as ```10:00```. \n* Here is an example: <code>&lt;time itemprop="openingHours" datetime=&quot;Tu,Th 16:00-20:00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n* If a business is open 7 days a week, then it can be specified as <code>&lt;time itemprop=&quot;openingHours&quot; datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all day&lt;/time&gt;</code>.
      def opening_hours=(value)
        write_property(:opening_hours, value)
      end

      # Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.
      def payment_accepted
        read_property(:payment_accepted)
      end

      # Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.
      def payment_accepted=(value)
        write_property(:payment_accepted, value)
      end

      # The price range of the business, for example ```$$$```.
      def price_range
        read_property(:price_range)
      end

      # The price range of the business, for example ```$$$```.
      def price_range=(value)
        write_property(:price_range, value)
      end
    end
  end
end
