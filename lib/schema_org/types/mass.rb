module SchemaOrg
  # https://schema.org/Mass
  #
  # Properties that take Mass as values are of the form '&lt;Number&gt; &lt;Mass unit of measure&gt;'. E.g., '7 kg'.
  class Mass
    include Mixins::Mass
  end
end
