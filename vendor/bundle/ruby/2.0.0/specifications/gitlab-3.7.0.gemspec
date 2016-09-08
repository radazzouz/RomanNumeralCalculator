# -*- encoding: utf-8 -*-
# stub: gitlab 3.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gitlab".freeze
  s.version = "3.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nihad Abbasov".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-08-16"
  s.description = "Ruby client and CLI for GitLab API".freeze
  s.email = ["mail@narkoz.me".freeze]
  s.executables = ["gitlab".freeze]
  s.files = ["exe/gitlab".freeze]
  s.homepage = "https://github.com/narkoz/gitlab".freeze
  s.licenses = ["BSD".freeze]
  s.rubygems_version = "2.6.6".freeze
  s.summary = "A Ruby wrapper and CLI for the GitLab API".freeze

  s.installed_by_version = "2.6.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.13.0"])
      s.add_runtime_dependency(%q<terminal-table>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
    else
      s.add_dependency(%q<httparty>.freeze, ["~> 0.13.0"])
      s.add_dependency(%q<terminal-table>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>.freeze, ["~> 0.13.0"])
    s.add_dependency(%q<terminal-table>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
