require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioClip
      extend ActiveSupport::Concern

      include Clip
    end
  end
end
