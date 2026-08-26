module SchemaOrg
  # https://schema.org/FilmAction
  #
  # The act of capturing sound and moving images on film, video, or digitally.
  class FilmAction < Base
    include Mixins::FilmAction
    SCHEMA_TYPES = [self, SchemaOrg::CreateAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
