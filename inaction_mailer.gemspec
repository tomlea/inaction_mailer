Gem::Specification.new do |s|
  s.name = %q{inaction_mailer}
  s.version = "0.6"

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
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'mocha'
end
