require "active_support/concern"

module SchemaOrg
  module Mixins
    module DrawAction
      extend ActiveSupport::Concern

      include CreateAction
    end
  end
end
