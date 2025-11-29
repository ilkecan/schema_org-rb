require "active_support/concern"

module SchemaOrg
  module Mixins
    module DislikeAction
      extend ActiveSupport::Concern

      include ReactAction
    end
  end
end
