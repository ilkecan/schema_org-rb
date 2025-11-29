require "active_support/concern"

module SchemaOrg
  module Mixins
    module Hospital
      extend ActiveSupport::Concern

      include CivicStructure
      include EmergencyService
      include MedicalOrganization
    end
  end
end
