class ProjectsController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]
	
	def index
		@all_projects = Project.all
		@projects = @all_projects.page(params[:page]).per(3)
		@projects_by_date = @projects.group_by(&:start_date)
		@date = Date.today
	end

	def show
		@project = Project.find(params[:id])
		@all_events = Event.all
		session[:current_project_id] = @project.id
	end

	def new
		@project = Project.new
		@all_events = Event.all
	end
	
	def edit
		@project = Project.find(params[:id])
	end
	
	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project, notice: "Successfully created project."
		else
			render :new
		end
	end
	
	def update
		@project = Project.find(params[:id])
		if @project.update(project_params)
			redirect_to @project, notice: "Successfully updated project."
		else
			render :edit
		end
	end			
	
	private

	def project_params
		params.require(:project).permit(:name, :description, :start_date, :volunteer_capacity, :volunteers, :location, :image, :hours_per_week)
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to project_path, notice: "Successfully destroyed project"
	end
end