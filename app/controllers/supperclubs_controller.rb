class SupperclubsController < ApplicationController

	def index
		@supperclubs = Supperclub.all
	end

	def show
		@supperclub = Supperclub.find(params[:id])
	end

	def new
		@supperclub = Supperclub.new
	end

	def edit
		@supperclub = Supperclub.find(params[:id])
	end

	def create
		@supperclub = Supperclub.new(params.require(:supperclub).permit(:name, :about, :location))
		if @supperclub.save
			redirect_to supperclubs_path
		else render :new
		end
	end

	def update
		@supperclub = Supperclub.find(params[:id])

		if @supperclub.update_attributes(params.require(:supperclub).permit(:name, :about, :location))
		redirect_to update_supperclub_path

		else
		  render :edit
	end
	end

	def destroy
		@supperclub = Supperclub.find(params[:id])
		@supperclub.destroy
		redirect_to supperclubs_path
	end

end
