module SchemaOrg
  # https://schema.org/Clip
  #
  # A short TV or radio program or a segment/part of a program.
  class Clip < Base
    include Mixins::Clip
  end
end
