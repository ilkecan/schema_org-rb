require "active_support/concern"

module SchemaOrg
  module Mixins
    module Attorney
      extend ActiveSupport::Concern

      include LegalService
    end
  end
end
