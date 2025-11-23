module SchemaOrg
  # https://schema.org/UserPageVisits
  #
  # UserInteraction and its subtypes is an old way of talking about users interacting with pages. It is generally better to use [[Action]]-based vocabulary, alongside types such as [[Comment]].
  class UserPageVisits
    include Types::UserPageVisits
  end
end
