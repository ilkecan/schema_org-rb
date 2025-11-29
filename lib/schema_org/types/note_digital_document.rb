module SchemaOrg
  # https://schema.org/NoteDigitalDocument
  #
  # A file containing a note, primarily for the author.
  class NoteDigitalDocument < Base
    include Mixins::NoteDigitalDocument
  end
end
