module SchemaOrg
  # https://schema.org/DataDownload
  #
  # All or part of a [[Dataset]] in downloadable form.
  class DataDownload < Base
    include Mixins::DataDownload
  end
end
