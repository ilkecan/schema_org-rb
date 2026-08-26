# frozen_string_literal: true

require "tmpdir"
require_relative "codegen_test_helper"

class TestCodegenManifest < Minitest::Test
  def test_stale_symlink_is_not_removed
    Dir.mktmpdir do |directory|
      root = Pathname.new(directory)
      target = root.join("target.rb")
      link = root.join("lib/schema_org/types/Thing.rb")
      target.write("keep")
      link.parent.mkpath
      File.symlink(target, link)
      manifest_file = root.join("codegen/manifest.json")
      manifest_file.parent.mkpath
      manifest_file.write(JSON.generate("runtime/types/Thing.rb" => "stale"))
      manifest = SchemaOrg::Codegen::Manifest.new(
        writer: SchemaOrg::Codegen::Writer.new,
        manifest_root: root.join("codegen"),
        runtime_root: root.join("lib/schema_org")
      )

      manifest.remove_stale("runtime/types/Thing.rb")

      assert_path_exists link
      assert_equal "keep", target.read
    end
  end
end
