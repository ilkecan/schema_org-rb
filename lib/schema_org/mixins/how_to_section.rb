require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToSection
      extend ActiveSupport::Concern

      include CreativeWork
      include ItemList
      include ListItem

      included do
        option :steps # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection (originally misnamed 'steps'; 'step' is preferred). Superseded by `step`.
      end
    end
  end
end
