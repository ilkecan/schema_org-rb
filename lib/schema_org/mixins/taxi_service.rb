require "active_support/concern"

module SchemaOrg
  module Mixins
    module TaxiService
      extend ActiveSupport::Concern

      include Service
    end
  end
end
