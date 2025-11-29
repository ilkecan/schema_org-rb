require "active_support/concern"

module SchemaOrg
  module Mixins
    module ItemPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
