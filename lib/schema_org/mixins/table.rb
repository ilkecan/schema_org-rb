require "active_support/concern"

module SchemaOrg
  module Mixins
    module Table
      extend ActiveSupport::Concern

      include WebPageElement
    end
  end
end
