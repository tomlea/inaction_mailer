## Usage:

Add the following lines to the appropriate `config/environments/*.rb` file:

    config.gem "inaction_mailer", :lib => 'inaction_mailer/force_load', :source => 'http://gemcutter.org'

As an extra step, for the sake of paranoia, you can check the delivery mechanism with:

    ./script/runner 'p ActionMailer::Base.delivery_method'

Now when you app send e-mails, it will deliver them to `RAILS_ROOT/tmp/sent_mails/mail.*.txt`.

## Viewing your messages in a mail client

For this task, I kindly hand you over to [popthis](http://github.com/cwninja/popthis). It will serve your sent_mails folder as a pop3 account on your local machine.
