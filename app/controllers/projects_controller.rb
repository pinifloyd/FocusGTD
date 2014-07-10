class ProjectsController < ApplicationController
  
  before_filter :find_user_project, only: [ :show, :edit, :update, :destroy ]

  def index
    respond_with(@projects = current_user.projects)
  end
  
  def new
    respond_with(@project = current_user.projects.new)
  end
  
  def create
    respond_with(@project = current_user.projects.create(project_params))
  end
  
  def show
    respond_with(@project)
  end
  
  def edit
    respond_with(@project)
  end
  
  def update
    @project.update_attributes(project_params); respond_with(@project)
  end
  
  def destroy
    respond_with(@project.destroy)
  end
  
private

  def project_params
    params[:project].permit(:name, :description, :user_id)
  end
  
  def find_user_project
    @project = current_user.projects.find(params[:id])
  end
  
end