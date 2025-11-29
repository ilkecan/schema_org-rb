require "active_support/concern"

module SchemaOrg
  module Mixins
    module SocialMediaPosting
      extend ActiveSupport::Concern

      include Article

      included do
        option :shared_content # A CreativeWork such as an image, video, or audio clip shared as part of this posting.
      end
    end
  end
end
