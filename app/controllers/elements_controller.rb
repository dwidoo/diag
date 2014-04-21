class ElementsController < ApplicationController
  before_filter :load_piece
  def index
    @elements = @piece.elements.all
  end

  def new
    @element = @piece.element.new
  end

  def create
    @element = @piece.elements.new(element_params)
    if @element.save
      flash[:notice] = "Elément créé!"
    else
      flash[:alert] = "Elément non créé!"
    end
    redirect_to piece_path(@piece)
  end

  def show
    @element = @piece.elements.find(params[:id])
  end

  def edit
    @element = @piece.elements.find(params[:id])
  end

  def update
    @element = @piece.elements.find(params[:id])
    if @element.update_attributes(element_params)
      flash[:notice] = "Elément modifié!"
    end
    redirect_to @element
  end

  def delete
    @element = @piece.elements.find(params[:id])
  end

  def destroy
    element = @piece.elements.find(params[:id]).destroy
    flash[:notice] = "Element supprimé!"
    redirect_to batiment_pieces_path(@batiment)
  end
  private
  #pour charger la piece parent avant chaque méthode
  def load_piece
    @piece = Piece.find(params[:piece_id])
  end
  #pour create - sécurité
  def element_params
    params.require(:element).permit(:nom)
  end
end
