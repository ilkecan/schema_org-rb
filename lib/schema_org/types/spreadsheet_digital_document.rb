module SchemaOrg
  # https://schema.org/SpreadsheetDigitalDocument
  #
  # A spreadsheet file.
  class SpreadsheetDigitalDocument < Base
    include Mixins::SpreadsheetDigitalDocument
  end
end
