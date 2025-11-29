require "active_support/concern"

module SchemaOrg
  module Mixins
    module PhotographAction
      extend ActiveSupport::Concern

      include CreateAction
    end
  end
end
