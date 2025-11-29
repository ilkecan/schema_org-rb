require "active_support/concern"

module SchemaOrg
  module Mixins
    module EmailMessage
      extend ActiveSupport::Concern

      include Message
    end
  end
end
