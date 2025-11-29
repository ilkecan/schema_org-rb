require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusinessAudience
      extend ActiveSupport::Concern

      include Audience

      included do
        option :number_of_employees # The number of employees in an organization, e.g. business.
        option :yearly_revenue # The size of the business in annual revenue.
        option :years_in_operation # The age of the business.
      end
    end
  end
end
