require "active_support/concern"

module SchemaOrg
  module Mixins
    module ContactPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
