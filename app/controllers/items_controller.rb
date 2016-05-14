class ItemsController < ApplicationController
  protect_from_forgery :except => :create
  
  def index
  end

  def callback
    render nothing: true
  end
end