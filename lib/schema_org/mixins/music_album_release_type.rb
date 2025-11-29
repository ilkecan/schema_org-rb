require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicAlbumReleaseType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
