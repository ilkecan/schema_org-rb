require "active_support/concern"

module SchemaOrg
  module Mixins
    module AgreeAction
      extend ActiveSupport::Concern

      include ReactAction
    end
  end
end
