require "active_support/concern"

module SchemaOrg
  module Mixins
    module Notary
      extend ActiveSupport::Concern

      include LegalService
    end
  end
end
