require "active_support/concern"

module SchemaOrg
  module Mixins
    module BedAndBreakfast
      extend ActiveSupport::Concern

      include LodgingBusiness
    end
  end
end
