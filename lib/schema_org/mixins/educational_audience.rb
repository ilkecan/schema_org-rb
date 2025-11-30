require "active_support/concern"

module SchemaOrg
  module Mixins
    module EducationalAudience
      extend ActiveSupport::Concern

      include Audience

      included do
        option :educational_role, optional: true # An educationalRole of an EducationalAudience.
      end
    end
  end
end
