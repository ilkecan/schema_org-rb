module SchemaOrg
  # https://schema.org/ListItem
  #
  # An list item, e.g. a step in a checklist or how-to description.
  class ListItem < Base
    include Mixins::ListItem
  end
end
