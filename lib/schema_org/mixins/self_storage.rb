require "active_support/concern"

module SchemaOrg
  module Mixins
    module SelfStorage
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
