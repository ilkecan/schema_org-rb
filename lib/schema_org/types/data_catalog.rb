module SchemaOrg
  # https://schema.org/DataCatalog
  #
  # A collection of datasets.
  class DataCatalog < Base
    include Mixins::DataCatalog
  end
end
