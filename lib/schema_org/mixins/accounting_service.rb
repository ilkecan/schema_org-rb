require "active_support/concern"

module SchemaOrg
  module Mixins
    module AccountingService
      extend ActiveSupport::Concern

      include FinancialService
    end
  end
end
