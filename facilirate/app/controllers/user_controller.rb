class UserController < ApplicationController
    # merge sign up and login
# GET this route => Get login form
# POST to this form => Log in user (username & password as params), redirect to home page
  def login
  end

  def signup
  end

  def viewProfile
      @args = []
      id = User.where('email = ?', current_user.email).first
      @args = (Review.where('user_id = ?', id))
  end

  def addReview
  end
end
