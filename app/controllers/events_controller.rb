class EventsController < ApplicationController
    def index
    	@all_events = Event.all
    	@events = @all_events.page(params[:page]).per(7)
    end
    
    def show
    	@event = Event.find(params[:id]) 
    end
    
    def new
    	@event = Event.new
    end
    	
    def edit
    	@event = Event.find(params[:id])
    end
    	
    def create
			@event = Event.new(event_params)
			@event.project_id = session[:current_project_id]
			if @event.save
				redirect_to @event, notice: "Successfully created event."
			else
				render :new
			end
 		end

    def update
	    @event = Event.find(params[:id])
			if @event.update(event_params)
				redirect_to @event, notice: "Successfully updated event."
			else
				render :edit
			end
		end
    	
    private

    def event_params
    	params.require(:event).permit(:name, :description, :start_time, :end_time, :location, :repeats, :project_id, daysRepeated: [])
    end

    def destroy
    	@event = Event.find(params[:id])
    	@event.destroy
    	redirect_to event_path, notice: "Successfully destroyed event."
    end
end
    	