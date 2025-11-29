require "active_support/concern"

module SchemaOrg
  module Mixins
    module PostOffice
      extend ActiveSupport::Concern

      include GovernmentOffice
    end
  end
end
