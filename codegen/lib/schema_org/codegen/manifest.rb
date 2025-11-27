module SchemaOrg
  module Codegen
    class Manifest
      include Import[:writer]

      def [](key)
        previous.delete(key)
      end

      def []=(key, value)
        current[key] = value
      end

      def stale_files
        previous.keys
      end

      def save
        writer.write file, JSON.pretty_generate(current)
      end

      private

      def current
        @current ||= {}
      end

      def file
        @file ||= Pathname('./codegen/manifest.json')
      end

      def load
        @previous = JSON.parse(file.read)
      end

      def previous
        @previous ||= file.readable? ? load : {}
      end
    end
  end
end
