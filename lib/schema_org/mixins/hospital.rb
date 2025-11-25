module SchemaOrg
  module Mixins
    module Hospital
      include CivicStructure
      include EmergencyService
      include MedicalOrganization
    end
  end
end
