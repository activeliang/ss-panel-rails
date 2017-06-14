if Settings.mailer == :mailgun
  ActionMailer::Base.smtp_settings = {
    port: 587,
    address:  'smtp.mailgun.org',
    user_name:  Settings.mailgun_user_name,
    password:  Settings.mailgun_password,
    domain:  Settings.mailgun_domain,
    authentication: :plain
  }
end

ActionMailer::Base.delivery_method = :smtp

class ApplicationMailer < ActionMailer::Base
  default from: Settings.email_sender
  layout 'mailer'
end
