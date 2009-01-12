# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{inaction_mailer}
  s.version = "0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Lea"]
  s.date = %q{2009-01-12}
  s.description = %q{An ActionMailer delivery mechanism to save mails as files in a directory.}
  s.email = %q{commits@tomlea.co.uk}
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["Rakefile", "README.markdown", "lib/inaction_mailer/force_load.rb", "lib/inaction_mailer.rb", "test/functional_test.rb", "test/test_helper.rb", "rails/init.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{An ActionMailer delivery mechanism to save mails as files in a directory.}
  s.test_files = ["test/functional_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
