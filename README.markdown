## Usage:

Add the following lines to the appropriate `config/environments/*.rb` file:

    config.gem "cwninja-inaction_mailer", :lib => 'inaction_mailer', :source => 'http://gems.github.com'
    config.action_mailer.delivery_method = :inaction_file

Now when you app send e-mails, it will deliver them to `RAILS_ROOT/tmp/sent_mails/mail.*.txt`.
