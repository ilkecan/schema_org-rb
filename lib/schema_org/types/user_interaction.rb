module SchemaOrg
  # https://schema.org/UserInteraction
  #
  # UserInteraction and its subtypes is an old way of talking about users interacting with pages. It is generally better to use [[Action]]-based vocabulary, alongside types such as [[Comment]].
  class UserInteraction
    include Mixins::UserInteraction
  end
end
