require "active_support/concern"

module SchemaOrg
  module Mixins
    module ConsumeAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :action_accessibility_requirement, optional: true # A set of requirements that must be fulfilled in order to perform an Action. If more than one value is specified, fulfilling one set of requirements will allow the Action to be performed.
        option :expects_acceptance_of, optional: true # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
      end
    end
  end
end
