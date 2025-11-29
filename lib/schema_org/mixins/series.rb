require "active_support/concern"

module SchemaOrg
  module Mixins
    module Series
      extend ActiveSupport::Concern

      include Intangible
    end
  end
end
