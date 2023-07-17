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
  # EventMailer.update(user,raduno).deliver_later
  #
  def update(user, raduno)
    @user = user
    @raduno = raduno

    mail to: @user.email
  end

  # Mailer to send to all event participants
  #
  # call registration mail in this way:
  # EventMailer.deletion(user,raduno).deliver_later
  #
  def deletion(user, raduno)
    @user = user
    @raduno = raduno

    mail to: @user.email
  end
end
