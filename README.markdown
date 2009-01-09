## Usage:

Add the following lines to the appropriate `config/environments/*.rb` file:

    config.gem "cwninja-inaction_mailer", :lib => 'inaction_mailer/force_load', :source => 'http://gems.github.com'

As an extra step, for the sake of paranoia, you can check the delivery mechanism with:

    ./script/runner 'p ActionMailer::Base.delivery_method'

Now when you app send e-mails, it will deliver them to `RAILS_ROOT/tmp/sent_mails/mail.*.txt`.
