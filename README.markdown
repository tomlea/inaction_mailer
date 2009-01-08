## Usage:

Add the following lines to the appropriate `config/environments/*.rb` file:

    config.gem "cwninja-inaction_mailer", :lib => 'inaction_mailer', :source => 'http://gems.github.com'
    config.action_mailer.delivery_method = :inaction_file

Now fetch and unpack the gem with:

    rake gems:install gems:unpack

As an extra step, for the sake of paranoia, you can check the delivery mechanism with:

    ./script/runner 'p ActionMailer::Base.delivery_method'

Now when you app send e-mails, it will deliver them to `RAILS_ROOT/tmp/sent_mails/mail.*.txt`.
