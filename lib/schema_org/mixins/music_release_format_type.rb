require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicReleaseFormatType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
