# frozen_string_literal: true

require "tmpdir"
require_relative "codegen_test_helper"

class TestCodegenManifest < Minitest::Test
  def test_stale_regular_files_are_removed_in_allowed_roots
    with_manifest do |root, manifest|
      runtime_file = root.join("lib/schema_org/types/Thing.rb")
      signature_file = root.join("sig/schema_org.rbs")
      runtime_file.parent.mkpath
      signature_file.parent.mkpath
      runtime_file.write("runtime")
      signature_file.write("signature")
      manifest.remove_stale("runtime/types/Thing.rb")
      manifest.remove_stale("signature/schema_org.rbs")
      refute_path_exists runtime_file
      refute_path_exists signature_file
    end
  end

  def test_invalid_logical_keys_are_rejected
    with_manifest do |_root, manifest|
      [
        "lib/schema_org/types/Thing.rb",
        "/tmp/Thing.rb",
        "runtime/types/",
        "runtime/types/../Thing.rb",
        "other/Thing.rb",
        "runtime/schema_version.rb/child",
        "signature/schema_org.rbs/child"
      ].each do |key|
        assert_raises(SchemaOrg::Codegen::ValidationError) { manifest[key] = "checksum" }
        assert_raises(SchemaOrg::Codegen::ValidationError) { manifest[key] }
      end
    end
  end

  def test_non_regular_stale_target_is_rejected
    with_manifest do |root, manifest|
      directory = root.join("lib/schema_org/types/Thing.rb")
      directory.mkpath
      assert_raises(SchemaOrg::Codegen::ValidationError) { manifest.remove_stale("runtime/types/Thing.rb") }
      assert_path_exists directory
    end
  end

  def test_stale_symlink_target_is_rejected_without_following_it
    with_manifest do |root, manifest|
      target = root.join("target.rb")
      link = root.join("lib/schema_org/types/Thing.rb")
      target.write("keep")
      link.parent.mkpath
      File.symlink(target, link)

      assert_raises(SchemaOrg::Codegen::ValidationError) { manifest.remove_stale("runtime/types/Thing.rb") }
      assert_path_exists link
      assert_equal "keep", target.read
    end
  end

  def test_stale_intermediate_symlink_is_rejected
    with_manifest do |root, manifest|
      target = root.join("real-types")
      link = root.join("lib/schema_org/types")
      target.mkpath
      target.join("Thing.rb").write("keep")
      link.parent.mkpath
      File.symlink(target, link)

      assert_raises(SchemaOrg::Codegen::ValidationError) { manifest.remove_stale("runtime/types/Thing.rb") }
      assert_equal "keep", target.join("Thing.rb").read
    end
  end

  private

  def with_manifest
    Dir.mktmpdir do |directory|
      root = Pathname.new(directory)
      manifest_file = root.join("codegen/manifest.json")
      manifest_file.parent.mkpath
      manifest_file.write(JSON.generate({}))
      manifest = SchemaOrg::Codegen::Manifest.new(
        writer: SchemaOrg::Codegen::Writer.new,
        manifest_root: root.join("codegen"),
        runtime_root: root.join("lib/schema_org"),
        signature_root: root.join("sig")
      )
      yield root, manifest
    end
  end
end
