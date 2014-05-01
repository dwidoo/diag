class PiecesController < ApplicationController
	before_action :load_batiment

	def index
		@pieces = @batiment.pieces.all
	end

	def new
		@batiment = Batiment.find(params[:batiment_id])
		@piece = @batiment.pieces.new
	end

	def create
		@piece = @batiment.pieces.new(piece_params)
		if @piece.save
			flash[:notice] = "Pièce créée!"
			redirect_to batiment_path(@batiment)
		else
			flash[:alert] = "Pièce non créée!"
			redirect_to batiment_path(@batiment)
		end
	end

	def show
		@piece = Piece.find(params[:id])
		@batiment = @piece.batiment
	end

	def edit
		@piece = Piece.find(params[:id])
	end

	def update
		@piece = Piece.find(params[:id])
		if @piece.update_attributes(piece_params)
			flash[:notice] = "Pièce modifiée!"
		end
		redirect_to batiment_piece_path(@batiment,@piece)
	end

	def delete
		@piece = Piece.find(params[:id])
	end

	def destroy
		piece = Piece.find(params[:id]).destroy
		flash[:notice] = "Pièce supprimée!"
		redirect_to batiment_pieces_path(@batiment)
	end

	private
	#pour charger le bâtiment parent après chaque méthode
	def load_batiment
		@batiment = Batiment.find(params[:batiment_id])
	end
	#pour create - sécurité
	def piece_params
    params.require(:piece).permit(:nom, :numero)
  end
end
