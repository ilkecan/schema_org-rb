module SchemaOrg
  # https://schema.org/PostalCodeRangeSpecification
  #
  # Indicates a range of postal codes, usually defined as the set of valid codes between [[postalCodeBegin]] and [[postalCodeEnd]], inclusively.
  class PostalCodeRangeSpecification
    include Types::PostalCodeRangeSpecification
  end
end
