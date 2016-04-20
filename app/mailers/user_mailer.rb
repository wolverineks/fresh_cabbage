class UserMailer < ApplicationMailer
#  default from: 'notifications@example.com'
#  SEE: appliction_mailer.rb for default email
 
  def welcome_email(user)
    @user = user
    @url  = 'https://powerful-mesa-57109.herokuapp.com/users/sign_in'
    email_with_name = %("#{@user.name}" <#{@user.email}>)
  	mail(to: email_with_name, subject: 'Welcome to Fresh Cabbage')
  	#mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end