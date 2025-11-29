require "active_support/concern"

module SchemaOrg
  module Mixins
    module MovieRentalStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
