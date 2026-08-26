module SchemaOrg
  module Codegen
    class Manifest
      LOGICAL_ROOTS = %w[runtime/mixins runtime/types].freeze
      LOGICAL_FILES = %w[runtime/schema_version.rb runtime/generated_vocabulary.rb signature/schema_org.rbs].freeze

      def initialize(writer:, manifest_root: Pathname.new("./codegen"), runtime_root: Pathname.new("./lib/schema_org"), signature_root: Pathname.new("./sig"), generated_root: nil)
        @writer = writer
        @file = Pathname.new(manifest_root).join("manifest.json")
        @runtime_root = Pathname.new(generated_root || runtime_root)
        @signature_root = Pathname.new(signature_root)
        @previous = nil
        @current = {}
      end

      def [](key)
        previous.delete(key)
      end

      def []=(key, value)
        raise ValidationError, "unknown manifest key #{key}" unless valid_key?(key)

        current[key] = value
      end

      def stale_files
        previous.keys
      end

      def remove_stale(key)
        path = resolve(key)
        return unless path
        return unless regular_without_symlink?(path)

        path.delete
      end

      def save
        writer.write(file, JSON.pretty_generate(current.sort.to_h) + "\n")
      end

      private

      attr_reader :writer, :file, :current, :runtime_root, :signature_root

      def load
        JSON.parse(file.read)
      end

      def previous
        @previous ||= file.readable? ? load : {}
      end

      def valid_key?(key)
        LOGICAL_FILES.include?(key) || LOGICAL_ROOTS.any? { |root| key.start_with?("#{root}/") && safe_relative?(key.delete_prefix("#{root}/")) }
      end

      def resolve(key)
        key = normalize_legacy_key(key)
        return unless valid_key?(key)

        if key.start_with?("runtime/")
          relative = key.delete_prefix("runtime/")
          runtime_root.join(relative)
        else
          signature_root.join(key.delete_prefix("signature/"))
        end
      end

      def normalize_legacy_key(key)
        return key unless key.start_with?("lib/schema_org/")

        "runtime/#{key.delete_prefix("lib/schema_org/")}"
      end

      def safe_relative?(relative)
        path = Pathname.new(relative)
        !path.absolute? && !path.each_filename.any? { |part| part == ".." || part.empty? }
      end

      def regular_without_symlink?(path)
        return false unless path.file?

        components = path.relative_path_from(path.absolute? ? Pathname.new("/") : Pathname.new(".")).each_filename
        current = Pathname.new(path.absolute? ? "/" : ".")
        components.all? do |component|
          current = current.join(component)
          !current.lstat.symlink?
        end
      rescue Errno::ENOENT
        false
      end
    end
  end
end
