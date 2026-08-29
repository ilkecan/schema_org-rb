# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module FinancialIncentive
      include Intangible

      def self.schema_property_definitions
        {
          area_served: {
            schema_name: "areaServed",
            schema_url: "https://schema.org/areaServed",
            comment_lines: ["The geographic area where a service or offered item is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["serviceArea"].freeze
          }.freeze,
          eligible_with_supplier: {
            schema_name: "eligibleWithSupplier",
            schema_url: "https://schema.org/eligibleWithSupplier",
            comment_lines: ["The supplier of the incentivized item/service for which the incentive is valid for such as a utility company, merchant, or contractor."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          incentive_amount: {
            schema_name: "incentiveAmount",
            schema_url: "https://schema.org/incentiveAmount",
            comment_lines: ["Describes the amount that can be redeemed from this incentive.", "", "<p>[[QuantitativeValue]]: Use this for incentives based on price (either raw amount or percentage-based). For a raw amount example, \"You can claim $2,500 - $7,500 from the total cost of installation\" would be represented as the following:</p>", "    {", "        \"@type\": \"QuantitativeValue\",", "        “minValue”: 2500,", "        “maxValue”: 7500,", "        \"unitCode\": \"USD\"", "    }", "<p>[[QuantitativeValue]] can also be used for percentage amounts. In such cases, value is used to represent the incentive’s percentage, while maxValue represents a limit (if one exists) to that incentive. The unitCode should be 'P1' and the unitText should be '%', while valueReference should be used for holding the currency type. For example, \"You can claim up to 30% of the total cost of installation, up to a maximum of $7,500\" would be:</p>", "    {", "        \"@type\": \"QuantitativeValue\",", "        \"value\": 30,", "        \"unitCode\": \"P1\",", "        \"unitText\": \"%\",", "        “maxValue”: 7500,", "        “valueReference”: “USD”", "    }", "<p>[[UnitPriceSpecification]]: Use this for incentives that are based on amounts rather than price. For example, a net metering rebate that pays $10/kWh, up to $1,000:</p>", "    {", "        \"@type\": \"UnitPriceSpecification\",", "        \"price\": 10,", "        \"priceCurrency\": \"USD\",", "        \"referenceQuantity\": 1,", "        \"unitCode\": \"DO3\",", "        \"unitText\": \"kw/h\",", "        \"maxPrice\": 1000,", "        \"description\": \"$10 / kwh up to $1000\"", "    }", "<p>[[LoanOrCredit]]: Use for incentives that are loan based. For example, a loan of $4,000 - $50,000 with a repayment term of 10 years, interest free would look like:</p>", "    {", "        \"@type\": \"LoanOrCredit\",", "        \"loanTerm\": {", "                \"@type\":\"QuantitativeValue\",", "                \"value\":\"10\",", "                \"unitCode\": \"ANN\"", "            },", "        \"amount\":[", "            {", "                \"@type\": \"QuantitativeValue\",", "                \"Name\":\"fixed interest rate\",", "                \"value\":\"0\",", "            },", "        ],", "        \"amount\":[", "            {", "                \"@type\": \"MonetaryAmount\",", "                \"Name\":\"min loan amount\",", "                \"value\":\"4000\",", "                \"currency\":\"CAD\"", "            },", "            {", "                \"@type\": \"MonetaryAmount\",", "                \"Name\":\"max loan amount\",", "                \"value\":\"50000\",", "                \"currency\":\"CAD\"", "            }", "        ],", "    }", "", "In summary: <ul><li>Use [[QuantitativeValue]] for absolute/percentage-based incentives applied on the price of a good/service.</li>", "<li>Use [[UnitPriceSpecification]] for incentives based on a per-unit basis (e.g. net metering).</li>", "<li>Use [[LoanOrCredit]] for loans/credits.</li>", "</ul>."].freeze,
            ranges: ["LoanOrCredit", "QuantitativeValue", "UnitPriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          incentive_status: {
            schema_name: "incentiveStatus",
            schema_url: "https://schema.org/incentiveStatus",
            comment_lines: ["The status of the incentive (active, on hold, retired, etc.)."].freeze,
            ranges: ["IncentiveStatus"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          incentive_type: {
            schema_name: "incentiveType",
            schema_url: "https://schema.org/incentiveType",
            comment_lines: ["The type of incentive offered (tax credit/rebate, tax deduction, tax waiver, subsidies, etc.)."].freeze,
            ranges: ["IncentiveType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          incentivized_item: {
            schema_name: "incentivizedItem",
            schema_url: "https://schema.org/incentivizedItem",
            comment_lines: ["The type or specific product(s) and/or service(s) being incentivized.", "<p>DefinedTermSets are used for product and service categories such as the United Nations Standard Products and Services Code:</p>", "    {", "        \"@type\": \"DefinedTerm\",", "        \"inDefinedTermSet\": \"https://www.unspsc.org/\",", "        \"termCode\": \"261315XX\",", "        \"name\": \"Photovoltaic module\"", "    }", "", "<p>For a specific product or service, use the Product type:</p>", "    {", "        \"@type\": \"Product\",", "        \"name\": \"Kenmore White 17\" Microwave\",", "    }", "For multiple different incentivized items, use multiple [[DefinedTerm]] or [[Product]]."].freeze,
            ranges: ["DefinedTerm", "Product"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          income_limit: {
            schema_name: "incomeLimit",
            schema_url: "https://schema.org/incomeLimit",
            comment_lines: ["Optional. Income limit for which the incentive is applicable for.", "", "<p>If MonetaryAmount is specified, this should be based on annualized income (e.g. if an incentive is limited to those making <$114,000 annually):</p>", "    {", "        \"@type\": \"MonetaryAmount\",", "        \"maxValue\": 114000,", "        \"currency\": \"USD\",", "    }", "", "Use Text for incentives that are limited based on other criteria, for example if an incentive is only available to recipients making 120% of the median poverty income in their area."].freeze,
            ranges: ["MonetaryAmount", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["carrier"].freeze
          }.freeze,
          publisher: {
            schema_name: "publisher",
            schema_url: "https://schema.org/publisher",
            comment_lines: ["The publisher of the article in question."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          purchase_price_limit: {
            schema_name: "purchasePriceLimit",
            schema_url: "https://schema.org/purchasePriceLimit",
            comment_lines: ["Optional. The maximum price the item can have and still qualify for this offer."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          purchase_type: {
            schema_name: "purchaseType",
            schema_url: "https://schema.org/purchaseType",
            comment_lines: ["Optional. The type of purchase the consumer must make in order to qualify for this incentive."].freeze,
            ranges: ["PurchaseType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          qualified_expense: {
            schema_name: "qualifiedExpense",
            schema_url: "https://schema.org/qualifiedExpense",
            comment_lines: ["Optional. The types of expenses that are covered by the incentive. For example some incentives are only for the goods (tangible items) but the services (labor) are excluded."].freeze,
            ranges: ["IncentiveQualifiedExpenseType"].freeze,
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
          valid_through: {
            schema_name: "validThrough",
            schema_url: "https://schema.org/validThrough",
            comment_lines: ["The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served
        read_property(:area_served)
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served=(value)
        write_property(:area_served, value)
      end

      # The supplier of the incentivized item/service for which the incentive is valid for such as a utility company, merchant, or contractor.
      def eligible_with_supplier
        read_property(:eligible_with_supplier)
      end

      # The supplier of the incentivized item/service for which the incentive is valid for such as a utility company, merchant, or contractor.
      def eligible_with_supplier=(value)
        write_property(:eligible_with_supplier, value)
      end

      # Describes the amount that can be redeemed from this incentive.
      #
      # <p>[[QuantitativeValue]]: Use this for incentives based on price (either raw amount or percentage-based). For a raw amount example, "You can claim $2,500 - $7,500 from the total cost of installation" would be represented as the following:</p>
      #     {
      #         "@type": "QuantitativeValue",
      #         “minValue”: 2500,
      #         “maxValue”: 7500,
      #         "unitCode": "USD"
      #     }
      # <p>[[QuantitativeValue]] can also be used for percentage amounts. In such cases, value is used to represent the incentive’s percentage, while maxValue represents a limit (if one exists) to that incentive. The unitCode should be 'P1' and the unitText should be '%', while valueReference should be used for holding the currency type. For example, "You can claim up to 30% of the total cost of installation, up to a maximum of $7,500" would be:</p>
      #     {
      #         "@type": "QuantitativeValue",
      #         "value": 30,
      #         "unitCode": "P1",
      #         "unitText": "%",
      #         “maxValue”: 7500,
      #         “valueReference”: “USD”
      #     }
      # <p>[[UnitPriceSpecification]]: Use this for incentives that are based on amounts rather than price. For example, a net metering rebate that pays $10/kWh, up to $1,000:</p>
      #     {
      #         "@type": "UnitPriceSpecification",
      #         "price": 10,
      #         "priceCurrency": "USD",
      #         "referenceQuantity": 1,
      #         "unitCode": "DO3",
      #         "unitText": "kw/h",
      #         "maxPrice": 1000,
      #         "description": "$10 / kwh up to $1000"
      #     }
      # <p>[[LoanOrCredit]]: Use for incentives that are loan based. For example, a loan of $4,000 - $50,000 with a repayment term of 10 years, interest free would look like:</p>
      #     {
      #         "@type": "LoanOrCredit",
      #         "loanTerm": {
      #                 "@type":"QuantitativeValue",
      #                 "value":"10",
      #                 "unitCode": "ANN"
      #             },
      #         "amount":[
      #             {
      #                 "@type": "QuantitativeValue",
      #                 "Name":"fixed interest rate",
      #                 "value":"0",
      #             },
      #         ],
      #         "amount":[
      #             {
      #                 "@type": "MonetaryAmount",
      #                 "Name":"min loan amount",
      #                 "value":"4000",
      #                 "currency":"CAD"
      #             },
      #             {
      #                 "@type": "MonetaryAmount",
      #                 "Name":"max loan amount",
      #                 "value":"50000",
      #                 "currency":"CAD"
      #             }
      #         ],
      #     }
      #
      # In summary: <ul><li>Use [[QuantitativeValue]] for absolute/percentage-based incentives applied on the price of a good/service.</li>
      # <li>Use [[UnitPriceSpecification]] for incentives based on a per-unit basis (e.g. net metering).</li>
      # <li>Use [[LoanOrCredit]] for loans/credits.</li>
      # </ul>.
      def incentive_amount
        read_property(:incentive_amount)
      end

      # Describes the amount that can be redeemed from this incentive.
      #
      # <p>[[QuantitativeValue]]: Use this for incentives based on price (either raw amount or percentage-based). For a raw amount example, "You can claim $2,500 - $7,500 from the total cost of installation" would be represented as the following:</p>
      #     {
      #         "@type": "QuantitativeValue",
      #         “minValue”: 2500,
      #         “maxValue”: 7500,
      #         "unitCode": "USD"
      #     }
      # <p>[[QuantitativeValue]] can also be used for percentage amounts. In such cases, value is used to represent the incentive’s percentage, while maxValue represents a limit (if one exists) to that incentive. The unitCode should be 'P1' and the unitText should be '%', while valueReference should be used for holding the currency type. For example, "You can claim up to 30% of the total cost of installation, up to a maximum of $7,500" would be:</p>
      #     {
      #         "@type": "QuantitativeValue",
      #         "value": 30,
      #         "unitCode": "P1",
      #         "unitText": "%",
      #         “maxValue”: 7500,
      #         “valueReference”: “USD”
      #     }
      # <p>[[UnitPriceSpecification]]: Use this for incentives that are based on amounts rather than price. For example, a net metering rebate that pays $10/kWh, up to $1,000:</p>
      #     {
      #         "@type": "UnitPriceSpecification",
      #         "price": 10,
      #         "priceCurrency": "USD",
      #         "referenceQuantity": 1,
      #         "unitCode": "DO3",
      #         "unitText": "kw/h",
      #         "maxPrice": 1000,
      #         "description": "$10 / kwh up to $1000"
      #     }
      # <p>[[LoanOrCredit]]: Use for incentives that are loan based. For example, a loan of $4,000 - $50,000 with a repayment term of 10 years, interest free would look like:</p>
      #     {
      #         "@type": "LoanOrCredit",
      #         "loanTerm": {
      #                 "@type":"QuantitativeValue",
      #                 "value":"10",
      #                 "unitCode": "ANN"
      #             },
      #         "amount":[
      #             {
      #                 "@type": "QuantitativeValue",
      #                 "Name":"fixed interest rate",
      #                 "value":"0",
      #             },
      #         ],
      #         "amount":[
      #             {
      #                 "@type": "MonetaryAmount",
      #                 "Name":"min loan amount",
      #                 "value":"4000",
      #                 "currency":"CAD"
      #             },
      #             {
      #                 "@type": "MonetaryAmount",
      #                 "Name":"max loan amount",
      #                 "value":"50000",
      #                 "currency":"CAD"
      #             }
      #         ],
      #     }
      #
      # In summary: <ul><li>Use [[QuantitativeValue]] for absolute/percentage-based incentives applied on the price of a good/service.</li>
      # <li>Use [[UnitPriceSpecification]] for incentives based on a per-unit basis (e.g. net metering).</li>
      # <li>Use [[LoanOrCredit]] for loans/credits.</li>
      # </ul>.
      def incentive_amount=(value)
        write_property(:incentive_amount, value)
      end

      # The status of the incentive (active, on hold, retired, etc.).
      def incentive_status
        read_property(:incentive_status)
      end

      # The status of the incentive (active, on hold, retired, etc.).
      def incentive_status=(value)
        write_property(:incentive_status, value)
      end

      # The type of incentive offered (tax credit/rebate, tax deduction, tax waiver, subsidies, etc.).
      def incentive_type
        read_property(:incentive_type)
      end

      # The type of incentive offered (tax credit/rebate, tax deduction, tax waiver, subsidies, etc.).
      def incentive_type=(value)
        write_property(:incentive_type, value)
      end

      # The type or specific product(s) and/or service(s) being incentivized.
      # <p>DefinedTermSets are used for product and service categories such as the United Nations Standard Products and Services Code:</p>
      #     {
      #         "@type": "DefinedTerm",
      #         "inDefinedTermSet": "https://www.unspsc.org/",
      #         "termCode": "261315XX",
      #         "name": "Photovoltaic module"
      #     }
      #
      # <p>For a specific product or service, use the Product type:</p>
      #     {
      #         "@type": "Product",
      #         "name": "Kenmore White 17" Microwave",
      #     }
      # For multiple different incentivized items, use multiple [[DefinedTerm]] or [[Product]].
      def incentivized_item
        read_property(:incentivized_item)
      end

      # The type or specific product(s) and/or service(s) being incentivized.
      # <p>DefinedTermSets are used for product and service categories such as the United Nations Standard Products and Services Code:</p>
      #     {
      #         "@type": "DefinedTerm",
      #         "inDefinedTermSet": "https://www.unspsc.org/",
      #         "termCode": "261315XX",
      #         "name": "Photovoltaic module"
      #     }
      #
      # <p>For a specific product or service, use the Product type:</p>
      #     {
      #         "@type": "Product",
      #         "name": "Kenmore White 17" Microwave",
      #     }
      # For multiple different incentivized items, use multiple [[DefinedTerm]] or [[Product]].
      def incentivized_item=(value)
        write_property(:incentivized_item, value)
      end

      # Optional. Income limit for which the incentive is applicable for.
      #
      # <p>If MonetaryAmount is specified, this should be based on annualized income (e.g. if an incentive is limited to those making <$114,000 annually):</p>
      #     {
      #         "@type": "MonetaryAmount",
      #         "maxValue": 114000,
      #         "currency": "USD",
      #     }
      #
      # Use Text for incentives that are limited based on other criteria, for example if an incentive is only available to recipients making 120% of the median poverty income in their area.
      def income_limit
        read_property(:income_limit)
      end

      # Optional. Income limit for which the incentive is applicable for.
      #
      # <p>If MonetaryAmount is specified, this should be based on annualized income (e.g. if an incentive is limited to those making <$114,000 annually):</p>
      #     {
      #         "@type": "MonetaryAmount",
      #         "maxValue": 114000,
      #         "currency": "USD",
      #     }
      #
      # Use Text for incentives that are limited based on other criteria, for example if an incentive is only available to recipients making 120% of the median poverty income in their area.
      def income_limit=(value)
        write_property(:income_limit, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # The publisher of the article in question.
      def publisher
        read_property(:publisher)
      end

      # The publisher of the article in question.
      def publisher=(value)
        write_property(:publisher, value)
      end

      # Optional. The maximum price the item can have and still qualify for this offer.
      def purchase_price_limit
        read_property(:purchase_price_limit)
      end

      # Optional. The maximum price the item can have and still qualify for this offer.
      def purchase_price_limit=(value)
        write_property(:purchase_price_limit, value)
      end

      # Optional. The type of purchase the consumer must make in order to qualify for this incentive.
      def purchase_type
        read_property(:purchase_type)
      end

      # Optional. The type of purchase the consumer must make in order to qualify for this incentive.
      def purchase_type=(value)
        write_property(:purchase_type, value)
      end

      # Optional. The types of expenses that are covered by the incentive. For example some incentives are only for the goods (tangible items) but the services (labor) are excluded.
      def qualified_expense
        read_property(:qualified_expense)
      end

      # Optional. The types of expenses that are covered by the incentive. For example some incentives are only for the goods (tangible items) but the services (labor) are excluded.
      def qualified_expense=(value)
        write_property(:qualified_expense, value)
      end

      # The date when the item becomes valid.
      def valid_from
        read_property(:valid_from)
      end

      # The date when the item becomes valid.
      def valid_from=(value)
        write_property(:valid_from, value)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through
        read_property(:valid_through)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through=(value)
        write_property(:valid_through, value)
      end
    end
  end
end
