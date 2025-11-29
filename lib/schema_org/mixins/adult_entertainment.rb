require "active_support/concern"

module SchemaOrg
  module Mixins
    module AdultEntertainment
      extend ActiveSupport::Concern

      include EntertainmentBusiness
    end
  end
end
