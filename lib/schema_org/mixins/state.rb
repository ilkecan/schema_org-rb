require "active_support/concern"

module SchemaOrg
  module Mixins
    module State
      extend ActiveSupport::Concern

      include AdministrativeArea
    end
  end
end
