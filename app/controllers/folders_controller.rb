class FoldersController < ApplicationController
  before_action :resource_folder, only: [:edit, :update, :new, :index]

  def index
    render :locals => { :folders => Folder.order(created_at: :desc), :folder => resource_folder }
  end

  def create
    if resource_folder.save
      redirect_to folders_path
    else
      render :new, :locals => { :folder => resource_folder }
    end
  end

  def edit
    render :locals => { :folder => resource_folder }
  end

  def new
    render :locals => { :folder => resource_folder  }
  end

  def update
    if resource_folder.update folder_params
      redirect_to folders_path
    else
      render :edit, :locals => { :folder => resource_folder }
    end
  end

  def resource_folder
    @resource_folder ||= params[:id] ? Folder.find(params[:id]) : Folder.new(folder_params)
  end

  def folder_params
    binding.pry
    (params[:folder] || ActionController::Parameters.new).permit(:title, :description)
  end
end
