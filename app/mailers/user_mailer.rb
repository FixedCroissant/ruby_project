class UserMailer < ApplicationMailer

      def welcome_email()
        @user = 'test@test'
        @url = 'http://example.com/Login'

        mail( to: @user, subject: 'Welcome there!')
      end
end
