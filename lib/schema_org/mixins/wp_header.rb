require "active_support/concern"

module SchemaOrg
  module Mixins
    module WPHeader
      extend ActiveSupport::Concern

      include WebPageElement
    end
  end
end
