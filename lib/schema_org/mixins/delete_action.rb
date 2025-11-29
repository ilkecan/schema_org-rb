require "active_support/concern"

module SchemaOrg
  module Mixins
    module DeleteAction
      extend ActiveSupport::Concern

      include UpdateAction
    end
  end
end
