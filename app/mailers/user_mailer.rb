class UserMailer < ApplicationMailer
#  default from: 'notifications@example.com'
#  SEE: appliction_mailer.rb for default email
 
  def welcome_email(user)
    @user = user
    #@url  = 'https://quiet-harbor-47415.herokuapp.com/users/sign_in'
    @url  = new_user_session_url
    email_with_name = %("#{@user.name}" <#{@user.email}>)
  	mail(to: email_with_name, subject: 'Welcome to Fresh Cabbage')
  	#mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
