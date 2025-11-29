require "active_support/concern"

module SchemaOrg
  module Mixins
    module MarryAction
      extend ActiveSupport::Concern

      include InteractAction
    end
  end
end
