require "active_support/concern"

module SchemaOrg
  module Mixins
    module EducationalAudience
      extend ActiveSupport::Concern

      include Audience

      included do
        option :educational_role # An educationalRole of an EducationalAudience.
      end
    end
  end
end
