require "active_support/concern"

module SchemaOrg
  module Mixins
    module AlignmentObject
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :alignment_type # A category of alignment between the learning resource and the framework node. Recommended values include: 'requires', 'textComplexity', 'readingLevel', and 'educationalSubject'.
        option :educational_framework # The framework to which the resource being described is aligned.
        option :target_description # The description of a node in an established educational framework.
        option :target_name # The name of a node in an established educational framework.
        option :target_url # The URL of a node in an established educational framework.
      end
    end
  end
end
