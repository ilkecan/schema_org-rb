require "tempfile"

module SchemaOrg
  module Codegen
    class SchemaUpdater
      VERSION_PATTERN = /\Av(\d+\.\d+)\z/

      def initialize(downloader:, replacer:, target: Pathname.new("./codegen/data/schema.ttl"))
        @downloader = downloader
        @replacer = replacer
        @target = Pathname.new(target)
      end

      def update(version)
        numeric = VERSION_PATTERN.match(version.to_s)&.captures&.first
        raise ValidationError, "expected schema version v<major>.<minor>" unless numeric

        url = "https://schema.org/version/#{numeric}/schemaorg-all-https.ttl"
        response = downloader.call(url)
        unless response_success?(response)
          raise ValidationError, "failed to download #{url}: #{response_code(response)}"
        end
        body = response_body(response)
        raise ValidationError, "schema download was empty" if body.empty?

        annotated = "# schema_org_release: #{version}\n# schema_org_source: #{url}\n#{body}"
        Tempfile.create(["schema", ".ttl"], target.dirname.to_s) do |temporary|
          temporary.write(annotated)
          temporary.flush
          temporary.fsync
          candidate = Models::SchemaVersion.current(schema_file: temporary.path)
          raise ValidationError, "downloaded schema version mismatch" unless candidate.schema_version == version
          parser = Parser.new(schema_file: temporary.path)
          raise ValidationError, "downloaded schema could not be parsed" if parser.subjects.empty?

          Vocabulary.new(parser:)
        end
        replacer.write(target, annotated)
        true
      rescue RDF::ReaderError, RDF::FormatError => error
        raise ValidationError, "downloaded schema could not be parsed: #{error.message}"
      end

      private

      attr_reader :downloader, :replacer, :target

      def response_success?(response)
        response.respond_to?(:success?) ? response.success? : response.code.to_i.between?(200, 299)
      end

      def response_code(response)
        response.respond_to?(:code) ? response.code : "unknown"
      end

      def response_body(response)
        response.respond_to?(:body) ? response.body.to_s : response.to_s
      end
    end
  end
end
