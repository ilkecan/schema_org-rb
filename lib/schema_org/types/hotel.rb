module SchemaOrg
  # https://schema.org/Hotel
  #
  # A hotel is an establishment that provides lodging paid on a short-term basis (source: Wikipedia, the free encyclopedia, see http://en.wikipedia.org/wiki/Hotel).
  # <br /><br />
  # See also the <a href="/docs/hotels.html">dedicated document on the use of schema.org for marking up hotels and other forms of accommodations</a>.
  class Hotel < Base
    include Mixins::Hotel
  end
end
