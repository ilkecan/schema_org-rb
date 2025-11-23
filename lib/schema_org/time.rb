module SchemaOrg
  # https://schema.org/Time
  #
  # A point in time recurring on multiple days in the form hh:mm:ss[Z|(+|-)hh:mm] (see [XML schema for details](http://www.w3.org/TR/xmlschema-2/#time)).
  class Time
    include Types::Time
  end
end
