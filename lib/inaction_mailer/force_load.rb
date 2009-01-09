require File.join(File.dirname(__FILE__), "..", "inaction_mailer")

module InactionMailer::ForceLoad
  # Overide the default mechanism rails uses to determine delivery method, 
  # and force it to always use :inaction_file
  def self.hook!
    ActionMailer::Base.instance_eval do
      def delivery_method
        :inaction_file
      end
    end
  end
end

InactionMailer::ForceLoad.hook!
