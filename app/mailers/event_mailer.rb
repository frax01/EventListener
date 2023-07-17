class EventMailer < ApplicationMailer

  # Mail to send to current participants
  #
  # call registration mail in this way:
  # EventMailer.registration(user,raduno).deliver_later
  #
  def registration(user, raduno)
    @user = user
    @raduno = raduno

    mail to: @user.email
  end

  # Mailer to send to all event participants
  #
  # call registration mail in this way:
  # EventMailer.with(user: user, event: @event).update.deliver_later
  #
  def update(user, raduno)
    @user = user
    @raduno = raduno

    mail to: @user.email
  end
end
