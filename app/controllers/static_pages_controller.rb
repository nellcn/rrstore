class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @feed_items = current_user.feed
    end
  end

  def help
  end

  def about
  end
end
