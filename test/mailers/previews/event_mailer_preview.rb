# Preview all emails at http://localhost:3000/rails/mailers/event_mailer
class EventMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/event_mailer/registration
  def registration
    EventMailer.registration
  end

  # Preview this email at http://localhost:3000/rails/mailers/event_mailer/update
  def update
    EventMailer.update
  end

end
