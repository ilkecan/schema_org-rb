require "active_support/concern"

module SchemaOrg
  module Mixins
    module City
      extend ActiveSupport::Concern

      include AdministrativeArea
    end
  end
end
