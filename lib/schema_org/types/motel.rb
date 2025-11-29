module SchemaOrg
  # https://schema.org/Motel
  #
  # A motel.
  # <br /><br />
  # See also the <a href="/docs/hotels.html">dedicated document on the use of schema.org for marking up hotels and other forms of accommodations</a>.
  class Motel < Base
    include Mixins::Motel
  end
end
