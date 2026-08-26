module SchemaOrg
  module Codegen
    class Manifest
      def initialize(writer:, manifest_root: Pathname.new('./codegen'), generated_root: Pathname.new('./lib/schema_org'))
        @writer = writer
        @file = Pathname.new(manifest_root).join('manifest.json')
        root = Pathname.new(generated_root)
        @allowed_roots = [root.join('mixins'), root.join('types'), root.join('schema_version.rb')]
        @previous = nil
        @current = {}
      end

      def [](key)
        previous.delete(key)
      end

      def []=(key, value)
        current[key] = value
      end

      def stale_files
        previous.keys
      end

      def remove_stale(path)
        candidate = Pathname.new(path).cleanpath
        return unless @allowed_roots.any? { |root| candidate == root || candidate.to_s.start_with?("#{root}/") }
        return unless candidate.file?

        candidate.delete
      end

      def save
        writer.write(file, JSON.pretty_generate(current.sort.to_h) + "\n")
      end

      private

      attr_reader :writer, :file, :current

      def load
        JSON.parse(file.read)
      end

      def previous
        @previous ||= file.readable? ? load : {}
      end
    end
  end
end
