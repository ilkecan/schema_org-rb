require "active_support/concern"

module SchemaOrg
  module Mixins
    module PrependAction
      extend ActiveSupport::Concern

      include InsertAction
    end
  end
end
