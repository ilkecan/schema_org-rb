require "active_support/concern"

module SchemaOrg
  module Mixins
    module WatchAction
      extend ActiveSupport::Concern

      include ConsumeAction
    end
  end
end
