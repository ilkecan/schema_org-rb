require "active_support/concern"

module SchemaOrg
  module Mixins
    module ArtGallery
      extend ActiveSupport::Concern

      include EntertainmentBusiness
    end
  end
end
