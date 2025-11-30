require "active_support/concern"

module SchemaOrg
  module Mixins
    module WarrantyPromise
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :duration_of_warranty, optional: true # The duration of the warranty promise. Common unitCode values are ANN for year, MON for months, or DAY for days.
        option :warranty_scope, optional: true # The scope of the warranty promise.
      end
    end
  end
end
