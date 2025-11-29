require "active_support/concern"

module SchemaOrg
  module Mixins
    module ConfirmAction
      extend ActiveSupport::Concern

      include InformAction
    end
  end
end
