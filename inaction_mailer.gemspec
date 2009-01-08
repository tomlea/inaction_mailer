Gem::Specification.new do |s|
  s.name = "inaction_mailer"
  s.version = "0.1"
  s.date = "2009-01-08"
  s.summary = "ActionMailer delivery mechanism to send mails to files in a directory."
  s.description = "ActionMailer delivery mechanism to send mails to a directory."
  s.has_rdoc = false
  s.authors = ['Tom Lea']
  s.files = [
    "inaction_mailer.gemspec",
    "lib/inaction_mailer.rb",
    "rails/init.rb",
    "Rakefile",
  ]
  s.test_files = [
    "test/functional_test.rb",
    "test/test_helper.rb",
  ]
end
