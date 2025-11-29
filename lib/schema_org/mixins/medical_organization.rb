require "active_support/concern"

module SchemaOrg
  module Mixins
    module MedicalOrganization
      extend ActiveSupport::Concern

      include Organization
    end
  end
end
