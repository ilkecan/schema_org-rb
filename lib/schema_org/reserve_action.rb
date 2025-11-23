module SchemaOrg
  # https://schema.org/ReserveAction
  #
  # Reserving a concrete object.\n\nRelated actions:\n\n* [[ScheduleAction]]: Unlike ScheduleAction, ReserveAction reserves concrete objects (e.g. a table, a hotel) towards a time slot / spatial allocation.
  class ReserveAction
    include Types::ReserveAction
  end
end
