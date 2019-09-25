class UserMailer < ApplicationMailer
 
  def welcome_email(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
