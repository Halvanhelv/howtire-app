class ImagesController < ApplicationController

  def index
    render :locals => { :images => Image.all }
  end
end
