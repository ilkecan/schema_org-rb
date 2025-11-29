require "active_support/concern"

module SchemaOrg
  module Mixins
    module ComedyClub
      extend ActiveSupport::Concern

      include EntertainmentBusiness
    end
  end
end
