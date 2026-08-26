module SchemaOrg
  # https://schema.org/GenderType
  #
  # An enumeration of genders.
  class GenderType < Base
    include Mixins::GenderType
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
    FEMALE = EnumerationValue.new("Female", self, [SchemaOrg::GenderType]).freeze
    MALE = EnumerationValue.new("Male", self, [SchemaOrg::GenderType]).freeze
    VALUES = [FEMALE, MALE].freeze

    def self.values
      VALUES
    end
  end
end
