class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    UserMailer.welcome_email().deliver_now
  end
end
