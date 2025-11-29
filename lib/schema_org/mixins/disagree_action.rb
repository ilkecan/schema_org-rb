require "active_support/concern"

module SchemaOrg
  module Mixins
    module DisagreeAction
      extend ActiveSupport::Concern

      include ReactAction
    end
  end
end
