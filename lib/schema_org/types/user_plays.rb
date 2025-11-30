module SchemaOrg
  # https://schema.org/UserPlays
  #
  # NOTE: Superseded by `InteractionCounter`.
  #
  # UserInteraction and its subtypes is an old way of talking about users interacting with pages. It is generally better to use [[Action]]-based vocabulary, alongside types such as [[Comment]].
  class UserPlays < Base
    include Mixins::UserPlays
  end
end
