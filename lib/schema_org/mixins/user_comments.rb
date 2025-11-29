require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserComments
      extend ActiveSupport::Concern

      include UserInteraction

      included do
        option :comment_text # The text of the UserComment.
        option :comment_time # The time at which the UserComment was made.
        option :creator # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
        option :discusses # Specifies the CreativeWork associated with the UserComment.
        option :reply_to_url # The URL at which a reply may be posted to the specified UserComment.
      end
    end
  end
end
