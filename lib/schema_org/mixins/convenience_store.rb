require "active_support/concern"

module SchemaOrg
  module Mixins
    module ConvenienceStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
