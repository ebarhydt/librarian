class ItemsController < ApplicationController
  protect_from_forgery :except => :create
  
  def index
  end

  def callback
    render nothing: true
    Item.parse_message(params[:message], params[:'_id'])
  end
end