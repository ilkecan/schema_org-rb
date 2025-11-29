require "active_support/concern"

module SchemaOrg
  module Mixins
    module Intangible
      extend ActiveSupport::Concern

      include Thing
    end
  end
end
