# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/DeclarationOfConformity
  #
  # A Declaration of Conformity (DoC), a formal document issued by a manufacturer declaring that a product meets specific regulatory requirements.
  class DeclarationOfConformity < Base
    include Mixins::DeclarationOfConformity

    SCHEMA_NAME = "DeclarationOfConformity"
    SCHEMA_TYPES = [self, SchemaOrg::Certification, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
