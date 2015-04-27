class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@supperclub = Supperclub.find(params[:id])
		@event = @supperclub.events.new
	end

	def create
		@supperclub = Supperclub.find(params[:id])
		@event = @supperclub.events.new(params.require(:event).permit(:name, :location, :guests, :price))
		@event.save 
		redirect_to supperclub_event_path(@supperclub, @event)
	end


	def edit
		@event = Event.find(params[:id])
		
	end

	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(params.require(:event).permit(:name, :description, :price, :guests))
			redirect_to update_supperclub_event_path
		else
		  render :edit
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end

end
