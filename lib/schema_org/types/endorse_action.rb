module SchemaOrg
  # https://schema.org/EndorseAction
  #
  # An agent approves/certifies/likes/supports/sanctions an object.
  class EndorseAction < Base
    include Mixins::EndorseAction
  end
end
