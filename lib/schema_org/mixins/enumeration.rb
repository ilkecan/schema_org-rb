require "active_support/concern"

module SchemaOrg
  module Mixins
    module Enumeration
      extend ActiveSupport::Concern

      include Intangible
    end
  end
end
