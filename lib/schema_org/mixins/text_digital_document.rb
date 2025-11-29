require "active_support/concern"

module SchemaOrg
  module Mixins
    module TextDigitalDocument
      extend ActiveSupport::Concern

      include DigitalDocument
    end
  end
end
