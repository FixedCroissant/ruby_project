class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    #temporarily comment out.
    #UserMailer.welcome_email(current_user).deliver_now
  end
end
