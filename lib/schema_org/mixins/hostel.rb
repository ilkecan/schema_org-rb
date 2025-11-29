require "active_support/concern"

module SchemaOrg
  module Mixins
    module Hostel
      extend ActiveSupport::Concern

      include LodgingBusiness
    end
  end
end
