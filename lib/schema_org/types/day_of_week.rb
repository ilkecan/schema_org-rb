module SchemaOrg
  # https://schema.org/DayOfWeek
  #
  # The day of the week, e.g. used to specify to which day the opening hours of an OpeningHoursSpecification refer.
  #
  # Originally, URLs from [GoodRelations](http://purl.org/goodrelations/v1) were used (for [[Monday]], [[Tuesday]], [[Wednesday]], [[Thursday]], [[Friday]], [[Saturday]], [[Sunday]] plus a special entry for [[PublicHolidays]]); these have now been integrated directly into schema.org.
  class DayOfWeek < Base
    include Mixins::DayOfWeek
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
    FRIDAY = EnumerationValue.new("Friday", self, [SchemaOrg::DayOfWeek]).freeze
    MONDAY = EnumerationValue.new("Monday", self, [SchemaOrg::DayOfWeek]).freeze
    PUBLIC_HOLIDAYS = EnumerationValue.new("PublicHolidays", self, [SchemaOrg::DayOfWeek]).freeze
    SATURDAY = EnumerationValue.new("Saturday", self, [SchemaOrg::DayOfWeek]).freeze
    SUNDAY = EnumerationValue.new("Sunday", self, [SchemaOrg::DayOfWeek]).freeze
    THURSDAY = EnumerationValue.new("Thursday", self, [SchemaOrg::DayOfWeek]).freeze
    TUESDAY = EnumerationValue.new("Tuesday", self, [SchemaOrg::DayOfWeek]).freeze
    WEDNESDAY = EnumerationValue.new("Wednesday", self, [SchemaOrg::DayOfWeek]).freeze
    VALUES = [FRIDAY, MONDAY, PUBLIC_HOLIDAYS, SATURDAY, SUNDAY, THURSDAY, TUESDAY, WEDNESDAY].freeze

    def self.values
      VALUES
    end
  end
end
