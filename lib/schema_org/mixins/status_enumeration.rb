require "active_support/concern"

module SchemaOrg
  module Mixins
    module StatusEnumeration
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
