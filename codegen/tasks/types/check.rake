namespace :types do
  desc "Validate generated RBS signatures"
  task :check do
    abort "RBS validation failed" unless system(
      Gem.ruby,
      Gem.bin_path("rbs", "rbs"),
      "-I",
      "sig",
      "-r",
      "date",
      "validate"
    )
  end
end
