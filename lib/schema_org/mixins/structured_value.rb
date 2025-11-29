require "active_support/concern"

module SchemaOrg
  module Mixins
    module StructuredValue
      extend ActiveSupport::Concern

      include Intangible
    end
  end
end
