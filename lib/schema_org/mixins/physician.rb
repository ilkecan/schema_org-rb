require "active_support/concern"

module SchemaOrg
  module Mixins
    module Physician
      extend ActiveSupport::Concern

      include MedicalBusiness
      include MedicalOrganization
    end
  end
end
