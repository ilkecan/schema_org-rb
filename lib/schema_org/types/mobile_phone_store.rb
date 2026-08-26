module SchemaOrg
  # https://schema.org/MobilePhoneStore
  #
  # A store that sells mobile phones and related accessories.
  class MobilePhoneStore < Base
    include Mixins::MobilePhoneStore
    SCHEMA_TYPES = [self, SchemaOrg::Store, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
