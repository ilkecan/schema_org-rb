# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Motel
  #
  # A motel.
  # <br /><br />
  # See also the <a href="/docs/hotels.html">dedicated document on the use of schema.org for marking up hotels and other forms of accommodations</a>.
  class Motel < Base
    include Mixins::Motel

    SCHEMA_NAME = "Motel"
    SCHEMA_TYPES = [self, SchemaOrg::LodgingBusiness, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
