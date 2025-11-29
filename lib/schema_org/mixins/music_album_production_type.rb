require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicAlbumProductionType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
