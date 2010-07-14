def delivered_emails
  ActionMailer::Base.deliveries
end