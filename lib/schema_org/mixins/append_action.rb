require "active_support/concern"

module SchemaOrg
  module Mixins
    module AppendAction
      extend ActiveSupport::Concern

      include InsertAction
    end
  end
end
