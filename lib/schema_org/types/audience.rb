module SchemaOrg
  # https://schema.org/Audience
  #
  # Intended audience for an item, i.e. the group for whom the item was created.
  class Audience < Base
    include Mixins::Audience
  end
end
