module SchemaOrg
  # https://schema.org/DownloadAction
  #
  # The act of downloading an object.
  class DownloadAction < Base
    include Mixins::DownloadAction
  end
end
