class ItemsController < ApplicationController
  protect_from_forgery :except => :create
  
  def index
    @items = Item.all
    
  end

  def create
    render nothing: true
  end

end
