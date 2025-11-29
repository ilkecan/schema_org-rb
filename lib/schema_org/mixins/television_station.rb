require "active_support/concern"

module SchemaOrg
  module Mixins
    module TelevisionStation
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
