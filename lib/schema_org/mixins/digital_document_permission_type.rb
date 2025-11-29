require "active_support/concern"

module SchemaOrg
  module Mixins
    module DigitalDocumentPermissionType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
