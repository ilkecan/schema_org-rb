require "active_support/concern"

module SchemaOrg
  module Mixins
    module VacationRental
      extend ActiveSupport::Concern

      include LodgingBusiness
    end
  end
end
