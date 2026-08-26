# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module WorkBasedProgram
      include EducationalOccupationalProgram

      def self.schema_property_definitions
        {
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
          training_salary: {
            schema_name: "trainingSalary",
            schema_url: "https://schema.org/trainingSalary",
            comment_lines: ["The estimated salary earned while in the program."].freeze,
            ranges: ["MonetaryAmountDistribution"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
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

      # The estimated salary earned while in the program.
      def training_salary
        read_property(:training_salary)
      end

      # The estimated salary earned while in the program.
      def training_salary=(value)
        write_property(:training_salary, value)
      end
    end
  end
end
