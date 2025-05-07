class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  
    def show
      @cart = current_user.cart || current_user.create_cart
    end
  end

  def new
  end

  def edit
  end
end
