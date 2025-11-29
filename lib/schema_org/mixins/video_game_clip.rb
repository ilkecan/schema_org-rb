require "active_support/concern"

module SchemaOrg
  module Mixins
    module VideoGameClip
      extend ActiveSupport::Concern

      include Clip
    end
  end
end
