require_relative "lib/youtube_dl/version"

Gem::Specification.new do |s|
  s.name          = "ytdl"
  s.version       = YoutubeDL::VERSION
  s.license       = "MIT"
  s.authors       = ["Max Hollmann", "Ivan Leschinsky"]
  s.email         = ["maxhollmann@gmail.com", "vanopiano@gmail.com"]
  s.homepage      = "https://github.com/maxhollmann/ruby-ytdl"
  s.summary       = "A wrapper for youtube-dl with progress callbacks"

  all_files       = `git ls-files -z`.split("\x0")
  s.files         = all_files.grep(%r!^(exe|lib|rubocop)/|^.rubocop.yml$!)
  s.executables   = all_files.grep(%r!^exe/!) { |f| File.basename(f) }
  s.bindir        = "exe"
  s.require_paths = ["lib"]

  s.metadata      = {
    "github_repo" => "ssh://github.com/ivan-leschinsky/ytdl-ruby.git",
    "source_code_uri" => "https://github.com/ivan-leschinsky/ytdl-ruby",
    "bug_tracker_uri" => "https://github.com/ivan-leschinsky/ytdl-ruby/issues",
    "changelog_uri"   => "https://github.com/ivan-leschinsky/ytdl-ruby/releases",
    "homepage_uri"    => s.homepage,
  }

  s.required_ruby_version = ">= 2.3.0"

  s.add_runtime_dependency("dry-configurable", "~> 1.0")
  s.add_runtime_dependency("filesize", "~> 0.2.0")
end
