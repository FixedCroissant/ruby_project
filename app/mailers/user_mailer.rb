class UserMailer < ApplicationMailer


  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  # Send a mail message, but specifically specify where the templates are located. 
  def test_message()    
    #set variables within the message.
    @userName = "This is your variable name."
    @urlLocation = "http://www.google.com"
    mail(to:'test@test.com',subject:'This is a test')
  end
end
