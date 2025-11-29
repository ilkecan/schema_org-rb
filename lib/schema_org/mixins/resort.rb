require "active_support/concern"

module SchemaOrg
  module Mixins
    module Resort
      extend ActiveSupport::Concern

      include LodgingBusiness
    end
  end
end
