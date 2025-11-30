require "active_support/concern"

module SchemaOrg
  module Mixins
    module ParentAudience
      extend ActiveSupport::Concern

      include PeopleAudience

      included do
        option :child_max_age, optional: true # Maximal age of the child.
        option :child_min_age, optional: true # Minimal age of the child.
      end
    end
  end
end
