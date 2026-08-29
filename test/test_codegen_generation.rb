# frozen_string_literal: true

require_relative "test_helper"
require_relative "codegen_test_helper"
require "json"
require "pathname"
require "tmpdir"

class TestCodegenGeneration < Minitest::Test
  def test_all_layer_registry_and_metadata_are_complete
    assert_equal SchemaOrg::SCHEMA_VERSION, SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file: Pathname.new("codegen/data/schema.ttl")).schema_version
    assert_equal "FAQPage", SchemaOrg::GeneratedVocabulary.ruby_name("FAQPage")
    assert_equal "FAQPage", SchemaOrg::GeneratedVocabulary.schema_name(SchemaOrg::FAQPage)
    assert_equal "FAQPage", SchemaOrg::GeneratedVocabulary.inflections.fetch("faq_page")
    assert SchemaOrg::GeneratedVocabulary.generated_class?(SchemaOrg::FAQPage)
    assert SchemaOrg::GeneratedVocabulary.enumeration?(SchemaOrg::ItemAvailability)
  end

  def test_metadata_is_immutable_and_uses_schema_names
    definition = SchemaOrg::Offer.property_definitions.fetch(:availability)

    assert_equal "availability", definition[:schema_name]
    assert_equal "https://schema.org/availability", definition[:schema_url]
    assert_predicate definition, :frozen?
    assert_predicate definition[:ranges], :frozen?
    assert_raises(FrozenError) { definition[:ranges] << "Thing" }
  end

  def test_representative_metadata_is_fully_frozen
    definitions = [
      SchemaOrg::ArchiveComponent.property_definitions.fetch(:holding_archive),
      SchemaOrg::APIReference.property_definitions.fetch(:assembly),
      SchemaOrg::APIReference.property_definitions.fetch(:executable_library_name),
      SchemaOrg::Observation.property_definitions.fetch(:measured_property)
    ]
    definitions.each do |definition|
      assert_predicate definition, :frozen?
      definition.each_value do |value|
        next unless value.is_a?(Array) || value.is_a?(String)

        assert_predicate value, :frozen?
        mutation = value.is_a?(Array) ? -> { value << "changed" } : -> { value.replace("changed") }
        assert_raises(FrozenError, "mutable metadata #{value.inspect}", &mutation)
      end
    end
    assert_equal "archiveHeld", definitions[0][:inverse_of]
    assert_equal "executableLibraryName", definitions[1][:superseded_by]
    assert_equal ["assembly"], definitions[2][:supersedes]
    assert_equal ["Property"], definitions[3][:external_ranges]
  end

  def test_reverse_supersession_metadata_contains_all_predecessors
    assert_equal ["catalog", "includedDataCatalog"], SchemaOrg::Dataset.property_definitions.fetch(:included_in_data_catalog)[:supersedes]
    assert_equal ["map", "maps"], SchemaOrg::Place.property_definitions.fetch(:has_map)[:supersedes]
    assert_equal ["members", "musicGroupMember"], SchemaOrg::Organization.property_definitions.fetch(:member)[:supersedes]
    assert_equal ["merchant", "vendor"], SchemaOrg::BuyAction.property_definitions.fetch(:seller)[:supersedes]
  end

  def test_generated_comments_include_all_reverse_supersession_notices
    interaction_counter = File.read("lib/schema_org/types/interaction_counter.rb")

    %w[
      UserBlocks
      UserCheckins
      UserComments
      UserDownloads
      UserInteraction
      UserLikes
      UserPageVisits
      UserPlays
      UserPlusOnes
      UserTweets
    ].each { |name| assert_includes interaction_counter, "# NOTE: Supersedes `#{name}`." }
  end

  def test_generated_comments_include_metadata_and_frozen_headers
    holding = File.read("lib/schema_org/mixins/archive_component.rb")
    reference = File.read("lib/schema_org/mixins/api_reference.rb")
    person = File.read("lib/schema_org/types/person.rb")
    scope_notice = <<~HEADER
      # Generated Ruby code is licensed under MIT.
      # Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
      # See LICENSE-SCHEMA-ORG.txt.
    HEADER

    assert_includes holding, "Inverse-property: `archiveHeld`."
    assert_includes reference, "Superseded by `executableLibraryName`."
    assert_includes reference, "Supersedes `assembly`."
    assert_match(/\A# frozen_string_literal: true\n\n#{Regexp.escape(scope_notice)}/, holding)
    assert_match(/\A# frozen_string_literal: true\n\n#{Regexp.escape(scope_notice)}/, person)
    Dir["lib/schema_org/**/*.rb"].each { |file| assert_match(/\A# frozen_string_literal: true\n/, File.read(file)) }
  end

  def test_equivalent_fixtures_generate_identical_trees_and_logical_manifest
    first = generate_tree("equivalent_default")
    second = generate_tree("equivalent_schema_reordered")

    assert_equal first[:files], second[:files]
    expected_keys = [
      "runtime/generated_vocabulary.rb",
      "runtime/mixins/child.rb",
      "runtime/mixins/text.rb",
      "runtime/mixins/thing.rb",
      "runtime/schema_version.rb",
      "runtime/types/child.rb",
      "runtime/types/text.rb",
      "runtime/types/thing.rb",
      "signature/schema_org.rbs"
    ]
    assert_equal expected_keys, first[:manifest].keys.sort
    refute first[:manifest].keys.any? { |key| key.start_with?("lib/") }
  end

  private

  def generate_tree(name)
    Dir.mktmpdir("schema-org-generation") do |directory|
      root = Pathname.new(directory)
      parser = SchemaOrg::Codegen::Parser.new(schema_file: fixture(name))
      vocabulary = SchemaOrg::Codegen::Vocabulary.new(parser:)
      writer = SchemaOrg::Codegen::Writer.new
      manifest = SchemaOrg::Codegen::Manifest.new(
        writer:,
        manifest_root: root.join("codegen"),
        runtime_root: root.join("lib/schema_org"),
        signature_root: root.join("sig")
      )
      generator = SchemaOrg::Codegen::Generator.new(
        manifest:,
        template_engine: SchemaOrg::Codegen::TemplateEngine.new(templates_root: Pathname.new(__dir__).parent.join("codegen/templates")),
        writer:,
        lib_root: root.join("lib/schema_org"),
        signature_root: root.join("sig")
      )
      orchestrator = SchemaOrg::Codegen::Orchestrator.new(
        generator:,
        manifest:,
        vocabulary:,
        schema_version: SchemaOrg::Codegen::Models::SchemaVersion.new(schema_version: "fixture")
      )
      Dir.chdir(root) { orchestrator.orchestrate }
      files = Dir[root.join("lib/**/*.rb").to_s] + Dir[root.join("sig/**/*.rbs").to_s] + [root.join("codegen/manifest.json").to_s]
      {
        files: files.sort.to_h { |path| [Pathname.new(path).relative_path_from(root).to_s, File.binread(path)] },
        manifest: JSON.parse(root.join("codegen/manifest.json").read)
      }
    end
  end
end
