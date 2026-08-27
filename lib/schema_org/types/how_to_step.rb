# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/HowToStep
  #
  # A step in the instructions for how to achieve a result. It is an ordered list with HowToDirection and/or HowToTip items.
  class HowToStep < Base
    include Mixins::HowToStep

    SCHEMA_NAME = "HowToStep"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::ItemList, SchemaOrg::ListItem, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
