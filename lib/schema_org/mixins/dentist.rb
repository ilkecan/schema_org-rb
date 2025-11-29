require "active_support/concern"

module SchemaOrg
  module Mixins
    module Dentist
      extend ActiveSupport::Concern

      include LocalBusiness
      include MedicalOrganization
    end
  end
end
