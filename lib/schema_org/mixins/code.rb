require "active_support/concern"

module SchemaOrg
  module Mixins
    module Code
      extend ActiveSupport::Concern

      include CreativeWork
    end
  end
end
