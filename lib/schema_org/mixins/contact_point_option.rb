require "active_support/concern"

module SchemaOrg
  module Mixins
    module ContactPointOption
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
