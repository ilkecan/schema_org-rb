require "active_support/concern"

module SchemaOrg
  module Mixins
    module AnimalShelter
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
