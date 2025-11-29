require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioEpisode
      extend ActiveSupport::Concern

      include Episode
    end
  end
end
