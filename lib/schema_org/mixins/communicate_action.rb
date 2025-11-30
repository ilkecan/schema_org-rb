require "active_support/concern"

module SchemaOrg
  module Mixins
    module CommunicateAction
      extend ActiveSupport::Concern

      include InteractAction

      included do
        option :language # A sub property of instrument. The language used on this action. Superseded by `in_language`.
        option :in_language # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]. Supersedes `language`.
        option :about # The subject matter of the content.
        option :recipient # A sub property of participant. The participant who is at the receiving end of the action.
      end
    end
  end
end
