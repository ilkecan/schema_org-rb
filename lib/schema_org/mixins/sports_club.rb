require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportsClub
      extend ActiveSupport::Concern

      include SportsActivityLocation
    end
  end
end
