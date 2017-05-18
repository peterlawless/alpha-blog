class PagesController < ApplicationController

  # redirects logged in users to articles index page so that they do not
  # get prompted to sign up or log in again
  def home
    redirect_to articles_path if logged_in?
  end

  def about
  end
end
