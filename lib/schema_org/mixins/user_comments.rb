require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserComments
      extend ActiveSupport::Concern

      include UserInteraction

      included do
        option :comment_text, optional: true # The text of the UserComment.
        option :comment_time, optional: true # The time at which the UserComment was made.
        option :creator, optional: true # The creator/author of this CreativeWork. This is the same as the Author property for CreativeWork.
        option :discusses, optional: true # Specifies the CreativeWork associated with the UserComment.
        option :reply_to_url, optional: true # The URL at which a reply may be posted to the specified UserComment.
      end
    end
  end
end
