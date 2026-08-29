# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module EducationalOccupationalProgram
      include Intangible

      def self.schema_property_definitions
        {
          application_deadline: {
            schema_name: "applicationDeadline",
            schema_url: "https://schema.org/applicationDeadline",
            comment_lines: ["The date on which the program stops collecting applications for the next enrollment cycle. Flexible application deadlines (for example, a program with rolling admissions) can be described in a textual string, rather than as a DateTime."].freeze,
            ranges: ["Date", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          application_start_date: {
            schema_name: "applicationStartDate",
            schema_url: "https://schema.org/applicationStartDate",
            comment_lines: ["The date at which the program begins collecting applications for the next enrollment cycle."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          day_of_week: {
            schema_name: "dayOfWeek",
            schema_url: "https://schema.org/dayOfWeek",
            comment_lines: ["The day of the week for which these opening hours are valid."].freeze,
            ranges: ["DayOfWeek"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_credential_awarded: {
            schema_name: "educationalCredentialAwarded",
            schema_url: "https://schema.org/educationalCredentialAwarded",
            comment_lines: ["A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program."].freeze,
            ranges: ["EducationalOccupationalCredential", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_program_mode: {
            schema_name: "educationalProgramMode",
            schema_url: "https://schema.org/educationalProgramMode",
            comment_lines: ["Similar to courseMode, the medium or means of delivery of the program as a whole. The value may either be a text label (e.g. \"online\", \"onsite\" or \"blended\"; \"synchronous\" or \"asynchronous\"; \"full-time\" or \"part-time\") or a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous )."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          financial_aid_eligible: {
            schema_name: "financialAidEligible",
            schema_url: "https://schema.org/financialAidEligible",
            comment_lines: ["A financial aid type or program which students may use to pay for tuition or fees associated with the program."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_course: {
            schema_name: "hasCourse",
            schema_url: "https://schema.org/hasCourse",
            comment_lines: ["A course or class that is one of the learning opportunities that constitute an educational / occupational program. No information is implied about whether the course is mandatory or optional; no guarantee is implied about whether the course will be available to everyone on the program."].freeze,
            ranges: ["Course"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maximum_enrollment: {
            schema_name: "maximumEnrollment",
            schema_url: "https://schema.org/maximumEnrollment",
            comment_lines: ["The maximum number of students who may be enrolled in the program."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_credits: {
            schema_name: "numberOfCredits",
            schema_url: "https://schema.org/numberOfCredits",
            comment_lines: ["The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram."].freeze,
            ranges: ["Integer", "StructuredValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          occupational_category: {
            schema_name: "occupationalCategory",
            schema_url: "https://schema.org/occupationalCategory",
            comment_lines: ["A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\\n", "Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC."].freeze,
            ranges: ["CategoryCode", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          occupational_credential_awarded: {
            schema_name: "occupationalCredentialAwarded",
            schema_url: "https://schema.org/occupationalCredentialAwarded",
            comment_lines: ["A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program."].freeze,
            ranges: ["EducationalOccupationalCredential", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          offers: {
            schema_name: "offers",
            schema_url: "https://schema.org/offers",
            comment_lines: ["An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."].freeze,
            ranges: ["Demand", "Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "itemOffered",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          program_prerequisites: {
            schema_name: "programPrerequisites",
            schema_url: "https://schema.org/programPrerequisites",
            comment_lines: ["Prerequisites for enrolling in the program."].freeze,
            ranges: ["AlignmentObject", "Course", "EducationalOccupationalCredential", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          program_type: {
            schema_name: "programType",
            schema_url: "https://schema.org/programType",
            comment_lines: ["The type of educational or occupational program. For example, classroom, internship, alternance, etc."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["carrier"].freeze
          }.freeze,
          salary_upon_completion: {
            schema_name: "salaryUponCompletion",
            schema_url: "https://schema.org/salaryUponCompletion",
            comment_lines: ["The expected salary upon completing the training."].freeze,
            ranges: ["MonetaryAmountDistribution"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          term_duration: {
            schema_name: "termDuration",
            schema_url: "https://schema.org/termDuration",
            comment_lines: ["The amount of time in a term as defined by the institution. A term is a length of time where students take one or more classes. Semesters and quarters are common units for term."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          terms_per_year: {
            schema_name: "termsPerYear",
            schema_url: "https://schema.org/termsPerYear",
            comment_lines: ["The number of times terms of study are offered per year. Semesters and quarters are common units for term. For example, if the student can only take 2 semesters for the program in one year, then termsPerYear should be 2."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          time_of_day: {
            schema_name: "timeOfDay",
            schema_url: "https://schema.org/timeOfDay",
            comment_lines: ["The time of day the program normally runs. For example, \"evenings\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          time_to_complete: {
            schema_name: "timeToComplete",
            schema_url: "https://schema.org/timeToComplete",
            comment_lines: ["The expected length of time to complete the program if attending full-time."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          training_salary: {
            schema_name: "trainingSalary",
            schema_url: "https://schema.org/trainingSalary",
            comment_lines: ["The estimated salary earned while in the program."].freeze,
            ranges: ["MonetaryAmountDistribution"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          typical_credits_per_term: {
            schema_name: "typicalCreditsPerTerm",
            schema_url: "https://schema.org/typicalCreditsPerTerm",
            comment_lines: ["The number of credits or units a full-time student would be expected to take in 1 term however 'term' is defined by the institution."].freeze,
            ranges: ["Integer", "StructuredValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The date on which the program stops collecting applications for the next enrollment cycle. Flexible application deadlines (for example, a program with rolling admissions) can be described in a textual string, rather than as a DateTime.
      def application_deadline
        read_property(:application_deadline)
      end

      # The date on which the program stops collecting applications for the next enrollment cycle. Flexible application deadlines (for example, a program with rolling admissions) can be described in a textual string, rather than as a DateTime.
      def application_deadline=(value)
        write_property(:application_deadline, value)
      end

      # The date at which the program begins collecting applications for the next enrollment cycle.
      def application_start_date
        read_property(:application_start_date)
      end

      # The date at which the program begins collecting applications for the next enrollment cycle.
      def application_start_date=(value)
        write_property(:application_start_date, value)
      end

      # The day of the week for which these opening hours are valid.
      def day_of_week
        read_property(:day_of_week)
      end

      # The day of the week for which these opening hours are valid.
      def day_of_week=(value)
        write_property(:day_of_week, value)
      end

      # A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program.
      def educational_credential_awarded
        read_property(:educational_credential_awarded)
      end

      # A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program.
      def educational_credential_awarded=(value)
        write_property(:educational_credential_awarded, value)
      end

      # Similar to courseMode, the medium or means of delivery of the program as a whole. The value may either be a text label (e.g. "online", "onsite" or "blended"; "synchronous" or "asynchronous"; "full-time" or "part-time") or a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous ).
      def educational_program_mode
        read_property(:educational_program_mode)
      end

      # Similar to courseMode, the medium or means of delivery of the program as a whole. The value may either be a text label (e.g. "online", "onsite" or "blended"; "synchronous" or "asynchronous"; "full-time" or "part-time") or a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous ).
      def educational_program_mode=(value)
        write_property(:educational_program_mode, value)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
      end

      # A financial aid type or program which students may use to pay for tuition or fees associated with the program.
      def financial_aid_eligible
        read_property(:financial_aid_eligible)
      end

      # A financial aid type or program which students may use to pay for tuition or fees associated with the program.
      def financial_aid_eligible=(value)
        write_property(:financial_aid_eligible, value)
      end

      # A course or class that is one of the learning opportunities that constitute an educational / occupational program. No information is implied about whether the course is mandatory or optional; no guarantee is implied about whether the course will be available to everyone on the program.
      def has_course
        read_property(:has_course)
      end

      # A course or class that is one of the learning opportunities that constitute an educational / occupational program. No information is implied about whether the course is mandatory or optional; no guarantee is implied about whether the course will be available to everyone on the program.
      def has_course=(value)
        write_property(:has_course, value)
      end

      # The maximum number of students who may be enrolled in the program.
      def maximum_enrollment
        read_property(:maximum_enrollment)
      end

      # The maximum number of students who may be enrolled in the program.
      def maximum_enrollment=(value)
        write_property(:maximum_enrollment, value)
      end

      # The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.
      def number_of_credits
        read_property(:number_of_credits)
      end

      # The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.
      def number_of_credits=(value)
        write_property(:number_of_credits, value)
      end

      # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n
      # Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
      def occupational_category
        read_property(:occupational_category)
      end

      # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n
      # Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
      def occupational_category=(value)
        write_property(:occupational_category, value)
      end

      # A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program.
      def occupational_credential_awarded
        read_property(:occupational_credential_awarded)
      end

      # A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program.
      def occupational_credential_awarded=(value)
        write_property(:occupational_credential_awarded, value)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers
        read_property(:offers)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers=(value)
        write_property(:offers, value)
      end

      # Prerequisites for enrolling in the program.
      def program_prerequisites
        read_property(:program_prerequisites)
      end

      # Prerequisites for enrolling in the program.
      def program_prerequisites=(value)
        write_property(:program_prerequisites, value)
      end

      # The type of educational or occupational program. For example, classroom, internship, alternance, etc.
      def program_type
        read_property(:program_type)
      end

      # The type of educational or occupational program. For example, classroom, internship, alternance, etc.
      def program_type=(value)
        write_property(:program_type, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # The expected salary upon completing the training.
      def salary_upon_completion
        read_property(:salary_upon_completion)
      end

      # The expected salary upon completing the training.
      def salary_upon_completion=(value)
        write_property(:salary_upon_completion, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
      end

      # The amount of time in a term as defined by the institution. A term is a length of time where students take one or more classes. Semesters and quarters are common units for term.
      def term_duration
        read_property(:term_duration)
      end

      # The amount of time in a term as defined by the institution. A term is a length of time where students take one or more classes. Semesters and quarters are common units for term.
      def term_duration=(value)
        write_property(:term_duration, value)
      end

      # The number of times terms of study are offered per year. Semesters and quarters are common units for term. For example, if the student can only take 2 semesters for the program in one year, then termsPerYear should be 2.
      def terms_per_year
        read_property(:terms_per_year)
      end

      # The number of times terms of study are offered per year. Semesters and quarters are common units for term. For example, if the student can only take 2 semesters for the program in one year, then termsPerYear should be 2.
      def terms_per_year=(value)
        write_property(:terms_per_year, value)
      end

      # The time of day the program normally runs. For example, "evenings".
      def time_of_day
        read_property(:time_of_day)
      end

      # The time of day the program normally runs. For example, "evenings".
      def time_of_day=(value)
        write_property(:time_of_day, value)
      end

      # The expected length of time to complete the program if attending full-time.
      def time_to_complete
        read_property(:time_to_complete)
      end

      # The expected length of time to complete the program if attending full-time.
      def time_to_complete=(value)
        write_property(:time_to_complete, value)
      end

      # The estimated salary earned while in the program.
      def training_salary
        read_property(:training_salary)
      end

      # The estimated salary earned while in the program.
      def training_salary=(value)
        write_property(:training_salary, value)
      end

      # The number of credits or units a full-time student would be expected to take in 1 term however 'term' is defined by the institution.
      def typical_credits_per_term
        read_property(:typical_credits_per_term)
      end

      # The number of credits or units a full-time student would be expected to take in 1 term however 'term' is defined by the institution.
      def typical_credits_per_term=(value)
        write_property(:typical_credits_per_term, value)
      end
    end
  end
end
