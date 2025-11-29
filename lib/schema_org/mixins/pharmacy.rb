require "active_support/concern"

module SchemaOrg
  module Mixins
    module Pharmacy
      extend ActiveSupport::Concern

      include MedicalOrganization
    end
  end
end
