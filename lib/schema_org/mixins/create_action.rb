require "active_support/concern"

module SchemaOrg
  module Mixins
    module CreateAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
