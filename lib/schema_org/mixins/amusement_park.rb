require "active_support/concern"

module SchemaOrg
  module Mixins
    module AmusementPark
      extend ActiveSupport::Concern

      include EntertainmentBusiness
    end
  end
end
