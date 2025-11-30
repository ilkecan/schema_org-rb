require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusinessAudience
      extend ActiveSupport::Concern

      include Audience

      included do
        option :number_of_employees, optional: true # The number of employees in an organization, e.g. business.
        option :yearly_revenue, optional: true # The size of the business in annual revenue.
        option :years_in_operation, optional: true # The age of the business.
      end
    end
  end
end
