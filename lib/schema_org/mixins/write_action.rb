require "active_support/concern"

module SchemaOrg
  module Mixins
    module WriteAction
      extend ActiveSupport::Concern

      include CreateAction

      included do
        option :language # A sub property of instrument. The language used on this action. Superseded by `in_language`.
        option :in_language # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]. Supersedes `language`.
      end
    end
  end
end
