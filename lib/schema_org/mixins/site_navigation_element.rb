require "active_support/concern"

module SchemaOrg
  module Mixins
    module SiteNavigationElement
      extend ActiveSupport::Concern

      include WebPageElement
    end
  end
end
