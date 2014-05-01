class BatimentsController < ApplicationController
	
	def index
		@batiments = Batiment.all
	end
	def new
		@batiment = Batiment.new
	end

	def create
		@batiment = Batiment.new(batiment_params)
		
		if @batiment.save
			flash[:notice] = "Bâtiment créé!"
			redirect_to new_batiment_piece_path(@batiment)
		else
			render('new')
		end
	end

	def show
		@batiment = Batiment.find(params[:id])
		@piece = @batiment.pieces.build
	end

	def edit
		@batiment = Batiment.find(params[:id])
	end

	def update
		@batiment = Batiment.find(params[:id])
		if @batiment.update_attributes(batiment_params)
			flash[:notice] = "Bâtiment modifié!"
			redirect_to @batiment
		else
			render 'edit'
		end	
	end

	def delete
		@batiment = Batiment.find(params[:id])
	end

	def destroy
		batiment = Batiment.find(params[:id]).destroy
		flash[:notice] = "Bâtiment supprimé!"
		redirect_to batiments_path
	end

	private
	#pour create - sécurité
	def batiment_params
    params.require(:batiment).permit(:adresse, :designation, :code_postal, :commune)
  end

end
