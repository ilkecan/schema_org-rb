require "active_support/concern"

module SchemaOrg
  module Mixins
    module Sculpture
      extend ActiveSupport::Concern

      include CreativeWork
    end
  end
end
