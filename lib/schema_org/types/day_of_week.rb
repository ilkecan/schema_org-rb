# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/DayOfWeek
  #
  # The day of the week, e.g. used to specify to which day the opening hours of an OpeningHoursSpecification refer.
  #
  # Originally, URLs from [GoodRelations](http://purl.org/goodrelations/v1) were used (for [[Monday]], [[Tuesday]], [[Wednesday]], [[Thursday]], [[Friday]], [[Saturday]], [[Sunday]] plus a special entry for [[PublicHolidays]]); these have now been integrated directly into schema.org.
  class DayOfWeek < Base
    include Mixins::DayOfWeek

    SCHEMA_NAME = "DayOfWeek"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    FRIDAY = EnumerationValue.new("Friday", [SchemaOrg::DayOfWeek])
    MONDAY = EnumerationValue.new("Monday", [SchemaOrg::DayOfWeek])
    PUBLIC_HOLIDAYS = EnumerationValue.new("PublicHolidays", [SchemaOrg::DayOfWeek])
    SATURDAY = EnumerationValue.new("Saturday", [SchemaOrg::DayOfWeek])
    SUNDAY = EnumerationValue.new("Sunday", [SchemaOrg::DayOfWeek])
    THURSDAY = EnumerationValue.new("Thursday", [SchemaOrg::DayOfWeek])
    TUESDAY = EnumerationValue.new("Tuesday", [SchemaOrg::DayOfWeek])
    WEDNESDAY = EnumerationValue.new("Wednesday", [SchemaOrg::DayOfWeek])
    VALUES = [FRIDAY, MONDAY, PUBLIC_HOLIDAYS, SATURDAY, SUNDAY, THURSDAY, TUESDAY, WEDNESDAY].freeze

    def self.values
      VALUES
    end
  end
end
