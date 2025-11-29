module SchemaOrg
  # https://schema.org/AddAction
  #
  # The act of editing by adding an object to a collection.
  class AddAction < Base
    include Mixins::AddAction
  end
end
