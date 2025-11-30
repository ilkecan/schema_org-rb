require "active_support/concern"

module SchemaOrg
  module Mixins
    module MobileApplication
      extend ActiveSupport::Concern

      include SoftwareApplication

      included do
        option :carrier_requirements, optional: true # Specifies specific carrier(s) requirements for the application (e.g. an application may only work on a specific carrier network).
      end
    end
  end
end
