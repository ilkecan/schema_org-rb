require "active_support/concern"

module SchemaOrg
  module Mixins
    module NightClub
      extend ActiveSupport::Concern

      include EntertainmentBusiness
    end
  end
end
