class UserMailer < ApplicationMailer
#  default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://quiet-harbor-47415.herokuapp.com/users/sign_in'
    email_with_name = %("#{@user.name}" <#{@user.email}>)
  	mail(to: email_with_name, subject: 'Welcome to My Awesome Site')
  	#mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
