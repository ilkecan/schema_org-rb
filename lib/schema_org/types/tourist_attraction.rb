module SchemaOrg
  # https://schema.org/TouristAttraction
  #
  # A tourist attraction.  In principle any Thing can be a [[TouristAttraction]], from a [[Mountain]] and [[LandmarksOrHistoricalBuildings]] to a [[LocalBusiness]].  This Type can be used on its own to describe a general [[TouristAttraction]], or be used as an [[additionalType]] to add tourist attraction properties to any other type.  (See examples below)
  class TouristAttraction
    include Mixins::TouristAttraction
  end
end
