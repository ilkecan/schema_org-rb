module SchemaOrg
  # https://schema.org/AgreeAction
  #
  # The act of expressing a consistency of opinion with the object. An agent agrees to/about an object (a proposition, topic or theme) with participants.
  class AgreeAction < Base
    include Mixins::AgreeAction
  end
end
