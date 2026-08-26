module SchemaOrg
  # https://schema.org/Physician
  #
  # An individual physician or a physician's office considered as a [[MedicalOrganization]].
  class Physician < Base
    include Mixins::Physician
    SCHEMA_TYPES = [self, SchemaOrg::MedicalOrganization, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
