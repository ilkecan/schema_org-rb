# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PhysicalExam
      include MedicalEnumeration
      include MedicalProcedure

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
