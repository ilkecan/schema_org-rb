require "active_support/concern"

module SchemaOrg
  module Mixins
    module MovieTheater
      extend ActiveSupport::Concern

      include CivicStructure
      include EntertainmentBusiness

      included do
        option :screen_count # The number of screens in the movie theater.
      end
    end
  end
end
