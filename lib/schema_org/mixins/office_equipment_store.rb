require "active_support/concern"

module SchemaOrg
  module Mixins
    module OfficeEquipmentStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
