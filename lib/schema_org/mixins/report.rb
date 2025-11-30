require "active_support/concern"

module SchemaOrg
  module Mixins
    module Report
      extend ActiveSupport::Concern

      include Article

      included do
        option :report_number, optional: true # The number or other unique designator assigned to a Report by the publishing organization.
      end
    end
  end
end
