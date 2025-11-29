module SchemaOrg
  # https://schema.org/Table
  #
  # A table on a Web page.
  class Table < Base
    include Mixins::Table
  end
end
