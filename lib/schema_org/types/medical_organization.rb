module SchemaOrg
  # https://schema.org/MedicalOrganization
  #
  # A medical organization (physical or not), such as hospital, institution or clinic.
  class MedicalOrganization < Base
    include Mixins::MedicalOrganization
  end
end
