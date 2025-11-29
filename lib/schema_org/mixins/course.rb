require "active_support/concern"

module SchemaOrg
  module Mixins
    module Course
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :course_code # The identifier for the [[Course]] used by the course [[provider]] (e.g. CS101 or 6.001).
        option :course_prerequisites # Requirements for taking the Course. May be completion of another [[Course]] or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using [[AlignmentObject]].
        option :has_course_instance # An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.
      end
    end
  end
end
