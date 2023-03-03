# frozen_string_literal: true

class ImagesController < ApplicationController
  def index
    render locals: { images: Image.all }
  end
end
