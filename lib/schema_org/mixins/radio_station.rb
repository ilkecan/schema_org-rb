require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioStation
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
