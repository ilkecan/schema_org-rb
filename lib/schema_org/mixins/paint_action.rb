require "active_support/concern"

module SchemaOrg
  module Mixins
    module PaintAction
      extend ActiveSupport::Concern

      include CreateAction
    end
  end
end
