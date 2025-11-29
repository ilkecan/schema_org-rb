require "active_support/concern"

module SchemaOrg
  module Mixins
    module AboutPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
