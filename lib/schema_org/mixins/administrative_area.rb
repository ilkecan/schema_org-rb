require "active_support/concern"

module SchemaOrg
  module Mixins
    module AdministrativeArea
      extend ActiveSupport::Concern

      include Place
    end
  end
end
