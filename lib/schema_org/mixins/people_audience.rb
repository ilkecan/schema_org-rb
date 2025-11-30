require "active_support/concern"

module SchemaOrg
  module Mixins
    module PeopleAudience
      extend ActiveSupport::Concern

      include Audience

      included do
        option :required_gender, optional: true # Audiences defined by a person's gender.
        option :required_max_age, optional: true # Audiences defined by a person's maximum age.
        option :required_min_age, optional: true # Audiences defined by a person's minimum age.
        option :suggested_gender, optional: true # The suggested gender of the intended person or audience, for example "male", "female", or "unisex".
        option :suggested_max_age, optional: true # Maximum recommended age in years for the audience or user.
        option :suggested_min_age, optional: true # Minimum recommended age in years for the audience or user.
      end
    end
  end
end
