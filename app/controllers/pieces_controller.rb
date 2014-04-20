class PiecesController < ApplicationController
	def index
		@pieces = Pieces.all
	end

	def new
		@piece = Piece.new
	end

	def create
		@batiment = Batiment.find(params[:batiment_id])
		@piece = @batiment.pieces.create(piece_params)
		if @piece.save
			flash[:notice] = "Pièce créée!"
			redirect_to batiment_path(@batiment)
		else
			redirect_to batiment_path(@batiment)
		end
	end

	def edit
		@piece = Piece.find(params[:id])
	end

	def delete
		@piece = Piece.find(params[:id])
	end

	def destroy
		@batiment = Batiment.find(params[:batiment_id])
		piece = @batiment.pieces.find(params[:id]).destroy
		flash[:notice] = "Pièce supprimée!"
		redirect_to batiment_path(@batiment)
	end

	private
	#pour create - sécurité
	def piece_params
    params.require(:piece).permit(:nom, :numero)
  end
end
