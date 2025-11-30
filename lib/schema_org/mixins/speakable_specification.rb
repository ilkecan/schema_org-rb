require "active_support/concern"

module SchemaOrg
  module Mixins
    module SpeakableSpecification
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :css_selector, optional: true # A CSS selector, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".
        option :xpath, optional: true # An XPath, e.g. of a [[SpeakableSpecification]] or [[WebPageElement]]. In the latter case, multiple matches within a page can constitute a single conceptual "Web page element".
      end
    end
  end
end
