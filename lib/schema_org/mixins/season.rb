require "active_support/concern"

module SchemaOrg
  module Mixins
    module Season
      extend ActiveSupport::Concern

      include CreativeWork
    end
  end
end
