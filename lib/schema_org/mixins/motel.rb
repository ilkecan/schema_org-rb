require "active_support/concern"

module SchemaOrg
  module Mixins
    module Motel
      extend ActiveSupport::Concern

      include LodgingBusiness
    end
  end
end
