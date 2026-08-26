# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Code
  #
  # NOTE: Superseded by `SoftwareSourceCode`.
  #
  # Computer programming source code. Example: Full (compile ready) solutions, code snippet samples, scripts, templates.
  class Code < Base
    include Mixins::Code

    SCHEMA_NAME = "Code"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
