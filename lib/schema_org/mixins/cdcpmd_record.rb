# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module CDCPMDRecord
      include StructuredValue

      def self.schema_property_definitions
        {
          cvd_collection_date: {
            schema_name: "cvdCollectionDate",
            schema_url: "https://schema.org/cvdCollectionDate",
            comment_lines: ["collectiondate - Date for which patient counts are reported."].freeze,
            ranges: ["DateTime", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_facility_county: {
            schema_name: "cvdFacilityCounty",
            schema_url: "https://schema.org/cvdFacilityCounty",
            comment_lines: ["Name of the County of the NHSN facility that this data record applies to. Use [[cvdFacilityId]] to identify the facility. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_facility_id: {
            schema_name: "cvdFacilityId",
            schema_url: "https://schema.org/cvdFacilityId",
            comment_lines: ["Identifier of the NHSN facility that this data record applies to. Use [[cvdFacilityCounty]] to indicate the county. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_beds: {
            schema_name: "cvdNumBeds",
            schema_url: "https://schema.org/cvdNumBeds",
            comment_lines: ["numbeds - HOSPITAL INPATIENT BEDS: Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_beds_occ: {
            schema_name: "cvdNumBedsOcc",
            schema_url: "https://schema.org/cvdNumBedsOcc",
            comment_lines: ["numbedsocc - HOSPITAL INPATIENT BED OCCUPANCY: Total number of staffed inpatient beds that are occupied."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_c19_died: {
            schema_name: "cvdNumC19Died",
            schema_url: "https://schema.org/cvdNumC19Died",
            comment_lines: ["numc19died - DEATHS: Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_c19_ho_pats: {
            schema_name: "cvdNumC19HOPats",
            schema_url: "https://schema.org/cvdNumC19HOPats",
            comment_lines: ["numc19hopats - HOSPITAL ONSET: Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_c19_hosp_pats: {
            schema_name: "cvdNumC19HospPats",
            schema_url: "https://schema.org/cvdNumC19HospPats",
            comment_lines: ["numc19hosppats - HOSPITALIZED: Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_c19_mech_vent_pats: {
            schema_name: "cvdNumC19MechVentPats",
            schema_url: "https://schema.org/cvdNumC19MechVentPats",
            comment_lines: ["numc19mechventpats - HOSPITALIZED and VENTILATED: Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_c19_of_mech_vent_pats: {
            schema_name: "cvdNumC19OFMechVentPats",
            schema_url: "https://schema.org/cvdNumC19OFMechVentPats",
            comment_lines: ["numc19ofmechventpats - ED/OVERFLOW and VENTILATED: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_c19_overflow_pats: {
            schema_name: "cvdNumC19OverflowPats",
            schema_url: "https://schema.org/cvdNumC19OverflowPats",
            comment_lines: ["numc19overflowpats - ED/OVERFLOW: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_icu_beds: {
            schema_name: "cvdNumICUBeds",
            schema_url: "https://schema.org/cvdNumICUBeds",
            comment_lines: ["numicubeds - ICU BEDS: Total number of staffed inpatient intensive care unit (ICU) beds."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_icu_beds_occ: {
            schema_name: "cvdNumICUBedsOcc",
            schema_url: "https://schema.org/cvdNumICUBedsOcc",
            comment_lines: ["numicubedsocc - ICU BED OCCUPANCY: Total number of staffed inpatient ICU beds that are occupied."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_tot_beds: {
            schema_name: "cvdNumTotBeds",
            schema_url: "https://schema.org/cvdNumTotBeds",
            comment_lines: ["numtotbeds - ALL HOSPITAL BEDS: Total number of all inpatient and outpatient beds, including all staffed, ICU, licensed, and overflow (surge) beds used for inpatients or outpatients."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_vent: {
            schema_name: "cvdNumVent",
            schema_url: "https://schema.org/cvdNumVent",
            comment_lines: ["numvent - MECHANICAL VENTILATORS: Total number of ventilators available."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cvd_num_vent_use: {
            schema_name: "cvdNumVentUse",
            schema_url: "https://schema.org/cvdNumVentUse",
            comment_lines: ["numventuse - MECHANICAL VENTILATORS IN USE: Total number of ventilators in use."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_posted: {
            schema_name: "datePosted",
            schema_url: "https://schema.org/datePosted",
            comment_lines: ["Publication date of an online listing."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # collectiondate - Date for which patient counts are reported.
      def cvd_collection_date
        read_property(:cvd_collection_date)
      end

      # collectiondate - Date for which patient counts are reported.
      def cvd_collection_date=(value)
        write_property(:cvd_collection_date, value)
      end

      # Name of the County of the NHSN facility that this data record applies to. Use [[cvdFacilityId]] to identify the facility. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry.
      def cvd_facility_county
        read_property(:cvd_facility_county)
      end

      # Name of the County of the NHSN facility that this data record applies to. Use [[cvdFacilityId]] to identify the facility. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry.
      def cvd_facility_county=(value)
        write_property(:cvd_facility_county, value)
      end

      # Identifier of the NHSN facility that this data record applies to. Use [[cvdFacilityCounty]] to indicate the county. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry.
      def cvd_facility_id
        read_property(:cvd_facility_id)
      end

      # Identifier of the NHSN facility that this data record applies to. Use [[cvdFacilityCounty]] to indicate the county. To provide other details, [[healthcareReportingData]] can be used on a [[Hospital]] entry.
      def cvd_facility_id=(value)
        write_property(:cvd_facility_id, value)
      end

      # numbeds - HOSPITAL INPATIENT BEDS: Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients.
      def cvd_num_beds
        read_property(:cvd_num_beds)
      end

      # numbeds - HOSPITAL INPATIENT BEDS: Inpatient beds, including all staffed, licensed, and overflow (surge) beds used for inpatients.
      def cvd_num_beds=(value)
        write_property(:cvd_num_beds, value)
      end

      # numbedsocc - HOSPITAL INPATIENT BED OCCUPANCY: Total number of staffed inpatient beds that are occupied.
      def cvd_num_beds_occ
        read_property(:cvd_num_beds_occ)
      end

      # numbedsocc - HOSPITAL INPATIENT BED OCCUPANCY: Total number of staffed inpatient beds that are occupied.
      def cvd_num_beds_occ=(value)
        write_property(:cvd_num_beds_occ, value)
      end

      # numc19died - DEATHS: Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location.
      def cvd_num_c19_died
        read_property(:cvd_num_c19_died)
      end

      # numc19died - DEATHS: Patients with suspected or confirmed COVID-19 who died in the hospital, ED, or any overflow location.
      def cvd_num_c19_died=(value)
        write_property(:cvd_num_c19_died, value)
      end

      # numc19hopats - HOSPITAL ONSET: Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization.
      def cvd_num_c19_ho_pats
        read_property(:cvd_num_c19_ho_pats)
      end

      # numc19hopats - HOSPITAL ONSET: Patients hospitalized in an NHSN inpatient care location with onset of suspected or confirmed COVID-19 14 or more days after hospitalization.
      def cvd_num_c19_ho_pats=(value)
        write_property(:cvd_num_c19_ho_pats, value)
      end

      # numc19hosppats - HOSPITALIZED: Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19.
      def cvd_num_c19_hosp_pats
        read_property(:cvd_num_c19_hosp_pats)
      end

      # numc19hosppats - HOSPITALIZED: Patients currently hospitalized in an inpatient care location who have suspected or confirmed COVID-19.
      def cvd_num_c19_hosp_pats=(value)
        write_property(:cvd_num_c19_hosp_pats, value)
      end

      # numc19mechventpats - HOSPITALIZED and VENTILATED: Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator.
      def cvd_num_c19_mech_vent_pats
        read_property(:cvd_num_c19_mech_vent_pats)
      end

      # numc19mechventpats - HOSPITALIZED and VENTILATED: Patients hospitalized in an NHSN inpatient care location who have suspected or confirmed COVID-19 and are on a mechanical ventilator.
      def cvd_num_c19_mech_vent_pats=(value)
        write_property(:cvd_num_c19_mech_vent_pats, value)
      end

      # numc19ofmechventpats - ED/OVERFLOW and VENTILATED: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator.
      def cvd_num_c19_of_mech_vent_pats
        read_property(:cvd_num_c19_of_mech_vent_pats)
      end

      # numc19ofmechventpats - ED/OVERFLOW and VENTILATED: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed and on a mechanical ventilator.
      def cvd_num_c19_of_mech_vent_pats=(value)
        write_property(:cvd_num_c19_of_mech_vent_pats, value)
      end

      # numc19overflowpats - ED/OVERFLOW: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed.
      def cvd_num_c19_overflow_pats
        read_property(:cvd_num_c19_overflow_pats)
      end

      # numc19overflowpats - ED/OVERFLOW: Patients with suspected or confirmed COVID-19 who are in the ED or any overflow location awaiting an inpatient bed.
      def cvd_num_c19_overflow_pats=(value)
        write_property(:cvd_num_c19_overflow_pats, value)
      end

      # numicubeds - ICU BEDS: Total number of staffed inpatient intensive care unit (ICU) beds.
      def cvd_num_icu_beds
        read_property(:cvd_num_icu_beds)
      end

      # numicubeds - ICU BEDS: Total number of staffed inpatient intensive care unit (ICU) beds.
      def cvd_num_icu_beds=(value)
        write_property(:cvd_num_icu_beds, value)
      end

      # numicubedsocc - ICU BED OCCUPANCY: Total number of staffed inpatient ICU beds that are occupied.
      def cvd_num_icu_beds_occ
        read_property(:cvd_num_icu_beds_occ)
      end

      # numicubedsocc - ICU BED OCCUPANCY: Total number of staffed inpatient ICU beds that are occupied.
      def cvd_num_icu_beds_occ=(value)
        write_property(:cvd_num_icu_beds_occ, value)
      end

      # numtotbeds - ALL HOSPITAL BEDS: Total number of all inpatient and outpatient beds, including all staffed, ICU, licensed, and overflow (surge) beds used for inpatients or outpatients.
      def cvd_num_tot_beds
        read_property(:cvd_num_tot_beds)
      end

      # numtotbeds - ALL HOSPITAL BEDS: Total number of all inpatient and outpatient beds, including all staffed, ICU, licensed, and overflow (surge) beds used for inpatients or outpatients.
      def cvd_num_tot_beds=(value)
        write_property(:cvd_num_tot_beds, value)
      end

      # numvent - MECHANICAL VENTILATORS: Total number of ventilators available.
      def cvd_num_vent
        read_property(:cvd_num_vent)
      end

      # numvent - MECHANICAL VENTILATORS: Total number of ventilators available.
      def cvd_num_vent=(value)
        write_property(:cvd_num_vent, value)
      end

      # numventuse - MECHANICAL VENTILATORS IN USE: Total number of ventilators in use.
      def cvd_num_vent_use
        read_property(:cvd_num_vent_use)
      end

      # numventuse - MECHANICAL VENTILATORS IN USE: Total number of ventilators in use.
      def cvd_num_vent_use=(value)
        write_property(:cvd_num_vent_use, value)
      end

      # Publication date of an online listing.
      def date_posted
        read_property(:date_posted)
      end

      # Publication date of an online listing.
      def date_posted=(value)
        write_property(:date_posted, value)
      end
    end
  end
end
