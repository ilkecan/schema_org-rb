require "tempfile"

module SchemaOrg
  module Codegen
    class Writer
      def write(file, content)
        file = Pathname.new(file)
        file.parent.mkpath
        Tempfile.create([file.basename.to_s, ".tmp"], file.parent.to_s) do |temporary|
          temporary.write(content)
          temporary.flush
          temporary.fsync
          File.rename(temporary.path, file)
        end
      end
    end
  end
end
