class LandingPagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def contact
  end

  def legal
  end

  def privacy
  end
end