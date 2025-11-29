require "active_support/concern"

module SchemaOrg
  module Mixins
    module Barcode
      extend ActiveSupport::Concern

      include ImageObject
    end
  end
end
