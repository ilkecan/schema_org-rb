module SchemaOrg
  # https://schema.org/JobPosting
  #
  # A listing that describes a job opening in a certain organization.
  class JobPosting < Base
    include Mixins::JobPosting
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
