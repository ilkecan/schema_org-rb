require "active_support/concern"

module SchemaOrg
  module Mixins
    module Conversation
      extend ActiveSupport::Concern

      include CreativeWork
    end
  end
end
