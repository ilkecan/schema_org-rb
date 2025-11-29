require "active_support/concern"

module SchemaOrg
  module Mixins
    module AutomatedTeller
      extend ActiveSupport::Concern

      include FinancialService
    end
  end
end
