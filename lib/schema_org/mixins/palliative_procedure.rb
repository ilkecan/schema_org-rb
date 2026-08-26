# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PalliativeProcedure
      include MedicalProcedure
      include MedicalTherapy

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
