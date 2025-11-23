module SchemaOrg
  module Types
    module Hospital
      include CivicStructure
      include EmergencyService
      include MedicalOrganization
    end
  end
end
