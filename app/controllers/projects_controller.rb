class ProjectsController < ApplicationController
  def index
    @projects=Project.all
  end

  def new
    @project=Project.new
    task=@project.tasks.build
  end

  def create
    params[:project][:config]=params[:project][:config].to_json
    @project=Project.create(project_params)
    if @project
      redirect_to root_path, :notice=>"project "+@project.name+" created!"
    else
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    redirect_to projects_path, :notice => "Project deleted."
  end

  def edit
  end

  def show
    @project=Project.find(params[:id])
  end
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to projects_path, :notice => "Project updated."
    else
      redirect_to projects_path, :alert => "Unable to update project."
    end
  end
  def project_params
    params.require(:project).permit(:name,:client_id,:start_time,:limit_time,:config)
  end
end