require "active_support/concern"

module SchemaOrg
  module Mixins
    module EmployerAggregateRating
      extend ActiveSupport::Concern

      include AggregateRating
    end
  end
end
