class ProjectsController < ApplicationController
  def index
    @projects=Project.all
  end

  def new
    @project=Project.new

  end

  def create
    @project=Projects.create(project_params)
    if @project 
      redirect_to root_path, :notice=>"project "+@project.name+" created!"
    else
    end
  end

  def destroy 
  end

  def edit
  end

  def show
    @projects=Projects.find(params[:id])
  end
  def update
  end
  def project_params
    params.require(:category).permit(:name,:start_time,:limit_time,:config)
  end
end
