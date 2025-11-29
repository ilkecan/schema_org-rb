require "active_support/concern"

module SchemaOrg
  module Mixins
    module URL
      extend ActiveSupport::Concern

      include Text
    end
  end
end
