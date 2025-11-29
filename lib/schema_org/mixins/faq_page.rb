require "active_support/concern"

module SchemaOrg
  module Mixins
    module FAQPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
