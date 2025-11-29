require "active_support/concern"

module SchemaOrg
  module Mixins
    module MobilePhoneStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
