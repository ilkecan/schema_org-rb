require "active_support/concern"

module SchemaOrg
  module Mixins
    module BlogPosting
      extend ActiveSupport::Concern

      include SocialMediaPosting
    end
  end
end
