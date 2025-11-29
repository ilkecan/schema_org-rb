require "active_support/concern"

module SchemaOrg
  module Mixins
    module QAPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
