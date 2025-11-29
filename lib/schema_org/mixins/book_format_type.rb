require "active_support/concern"

module SchemaOrg
  module Mixins
    module BookFormatType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
