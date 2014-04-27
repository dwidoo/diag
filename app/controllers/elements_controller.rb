class ElementsController < ApplicationController
  #after_filter :load_piece

  def index
    @piece = Piece.find(params[:piece_id])
    @elements = @piece.elements
  end

  def new
    @piece = Piece.find(params[:piece_id])
    @element = @piece.elements.new
  end

  def create
    @piece = Piece.find(params[:piece_id])
    @element = @piece.elements.new(element_params)
    if @element.save
      flash[:notice] = "Elément créé!"
    else
      flash[:alert] = "Elément non créé!"
    end
    #redirect_to piece_path(@piece)
  end

  def show
    @element = Element.find(params[:id])
  end

  def edit
    @element = Element.find(params[:id])
  end

  def update
    @element = Element.find(params[:id])
    if @element.update_attributes(element_params)
      flash[:notice] = "Elément modifié!"
    end
    redirect_to @element
  end

  def delete
    @element = Element.find(params[:id])
  end

  def destroy
    element = Element.find(params[:id])
    piece=element.piece
    element.destroy
    flash[:notice] = "Element supprimé!"
    redirect_to piece_path(piece)
  end
  private
  #pour charger la piece parent avant chaque méthode
  def load_piece
    @piece = @element.piece
    @batiment = @piece.batiment
  end
  #pour create - sécurité
  def element_params
    params.require(:element).permit(:nom)
  end
end
