require "active_support/concern"

module SchemaOrg
  module Mixins
    module WebApplication
      extend ActiveSupport::Concern

      include SoftwareApplication

      included do
        option :browser_requirements, optional: true # Specifies browser requirements in human-readable text. For example, 'requires HTML5 support'.
      end
    end
  end
end
