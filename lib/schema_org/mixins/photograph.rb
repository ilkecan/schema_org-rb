require "active_support/concern"

module SchemaOrg
  module Mixins
    module Photograph
      extend ActiveSupport::Concern

      include CreativeWork
    end
  end
end
