require "active_support/concern"

module SchemaOrg
  module Mixins
    module GenderType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
