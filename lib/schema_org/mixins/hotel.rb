require "active_support/concern"

module SchemaOrg
  module Mixins
    module Hotel
      extend ActiveSupport::Concern

      include LodgingBusiness
    end
  end
end
