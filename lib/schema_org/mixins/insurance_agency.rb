require "active_support/concern"

module SchemaOrg
  module Mixins
    module InsuranceAgency
      extend ActiveSupport::Concern

      include FinancialService
    end
  end
end
