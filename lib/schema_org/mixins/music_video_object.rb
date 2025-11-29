require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicVideoObject
      extend ActiveSupport::Concern

      include MediaObject
    end
  end
end
