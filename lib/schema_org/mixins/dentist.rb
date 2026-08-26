# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Dentist
      include LocalBusiness
      include MedicalBusiness
      include MedicalOrganization

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
