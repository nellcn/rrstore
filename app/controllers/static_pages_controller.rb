class StaticPagesController < ApplicationController
  def home
    @products = Product.all
    if signed_in?
      @feed_items = current_user.feed
    end
  end

  def show_product
    @product = Product.find_by_code(params[:id])
  end

  def help
  end

  def about
  end
end
