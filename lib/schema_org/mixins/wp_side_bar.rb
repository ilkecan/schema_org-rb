require "active_support/concern"

module SchemaOrg
  module Mixins
    module WPSideBar
      extend ActiveSupport::Concern

      include WebPageElement
    end
  end
end
