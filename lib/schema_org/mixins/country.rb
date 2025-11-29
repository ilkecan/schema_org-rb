require "active_support/concern"

module SchemaOrg
  module Mixins
    module Country
      extend ActiveSupport::Concern

      include AdministrativeArea
    end
  end
end
