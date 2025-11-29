module SchemaOrg
  # https://schema.org/MenuItem
  #
  # A food or drink item listed in a menu or menu section.
  class MenuItem < Base
    include Mixins::MenuItem
  end
end
