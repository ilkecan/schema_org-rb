module SchemaOrg
  # https://schema.org/PhotographAction
  #
  # The act of capturing still images of objects using a camera.
  class PhotographAction < Base
    include Mixins::PhotographAction
  end
end
