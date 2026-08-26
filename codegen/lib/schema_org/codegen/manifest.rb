module SchemaOrg
  module Codegen
    class Manifest
      LOGICAL_ROOTS = %w[runtime/mixins runtime/types].freeze
      LOGICAL_FILES = %w[runtime/schema_version.rb runtime/generated_vocabulary.rb signature/schema_org.rbs].freeze

      def initialize(writer:, manifest_root: Pathname.new("./codegen"), runtime_root: Pathname.new("./lib/schema_org"), signature_root: Pathname.new("./sig"))
        @writer = writer
        @file = Pathname.new(manifest_root).join("manifest.json")
        @runtime_root = Pathname.new(runtime_root)
        @signature_root = Pathname.new(signature_root)
        @previous = nil
        @current = {}
      end

      def [](key)
        validate_key!(key)
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
        return unless path.exist?
        raise ValidationError, "manifest target is not a regular file #{key}" unless regular_without_symlink?(path)

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
        return false unless key.is_a?(String)

        LOGICAL_FILES.include?(key) || LOGICAL_ROOTS.any? do |root|
          key.start_with?("#{root}/") && safe_relative?(key.delete_prefix("#{root}/"))
        end
      end

      def validate_key!(key)
        raise ValidationError, "unknown manifest key #{key}" unless valid_key?(key)
      end

      def resolve(key)
        validate_key!(key)
        relative = if key.start_with?("runtime/")
          runtime_root.join(key.delete_prefix("runtime/"))
        else
          signature_root.join(key.delete_prefix("signature/"))
        end
        raise ValidationError, "manifest path traverses symlink #{key}" unless no_symlink_component?(relative)

        relative
      end

      def safe_relative?(relative)
        path = Pathname.new(relative)
        !relative.empty? && !path.absolute? && !path.each_filename.any? { |part| part == ".." || part.empty? || part == "." }
      end

      def no_symlink_component?(path)
        absolute = Pathname.new(File.expand_path(path.to_s))
        current = Pathname.new("/")
        absolute.each_filename.all? do |component|
          current = current.join(component)
          begin
            !current.lstat.symlink?
          rescue Errno::ENOENT
            true
          end
        end
      end

      def regular_without_symlink?(path)
        return false unless path.exist?
        return false unless path.lstat.file?

        no_symlink_component?(path)
      rescue Errno::ENOENT
        false
      end
    end
  end
end
