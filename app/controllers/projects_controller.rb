class ProjectsController < ApplicationController
  def index
    @projects=Projects.all
  end

  def new

  end

  def create
    @projects=Projects.create(project_params)
  end

  def destroy
  end

  def edit
  end

  def show
  end
  def update
  end
  def category_params
    
  end
end
