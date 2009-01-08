require File.join(File.dirname(__FILE__), "test_helper")

class InactionMailerTest < Test::Unit::TestCase
  class Mailer
    include InactionMailer
  end

  def test_should_write_mail_to_file
    with_stubbed_file_store do
      mailer = Mailer.new
      mail_content = "Hello world, this is an e-mail!\n"*10
      mail = stub(:ready_to_send => nil, :encoded => mail_content)
      mailer.perform_delivery_inaction_file(mail)
      assert_equal File.read("sent_mails/mail.0.txt"), mail_content
    end
  end

  def test_should_write_two_mails_to_files
    with_stubbed_file_store do
      mailer = Mailer.new
      mail_1_content = "Hello world, this is an e-mail!"
      mail_2_content = "I am a pirate, yarrr!"
      mail1 = stub(:ready_to_send => nil, :encoded => mail_1_content)
      mail2 = stub(:ready_to_send => nil, :encoded => mail_2_content)
      mailer.perform_delivery_inaction_file(mail1)
      mailer.perform_delivery_inaction_file(mail2)
      assert_equal File.read("sent_mails/mail.0.txt"), mail_1_content
      assert_equal File.read("sent_mails/mail.1.txt"), mail_2_content
    end
  end
end
