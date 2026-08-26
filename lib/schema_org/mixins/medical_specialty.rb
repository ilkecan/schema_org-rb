# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalSpecialty
      include MedicalEnumeration
      include Specialty

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
