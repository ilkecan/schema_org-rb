require "active_support/concern"

module SchemaOrg
  module Mixins
    module MovieClip
      extend ActiveSupport::Concern

      include Clip
    end
  end
end
