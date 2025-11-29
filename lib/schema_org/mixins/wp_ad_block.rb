require "active_support/concern"

module SchemaOrg
  module Mixins
    module WPAdBlock
      extend ActiveSupport::Concern

      include WebPageElement
    end
  end
end
