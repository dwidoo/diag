class AmiantesController < ApplicationController
  before_action :set_amiante, only: [:show, :edit, :update, :destroy]

  # GET /amiantes
  # GET /amiantes.json
  def index
    @amiantes = Amiante.all
  end

  # GET /amiantes/1
  # GET /amiantes/1.json
  def show
  end

  # GET /amiantes/new
  def new
    @amiante = Amiante.new
  end

  # GET /amiantes/1/edit
  def edit
  end

  # POST /amiantes
  # POST /amiantes.json
  def create
    @amiante = Amiante.new(amiante_params)

    respond_to do |format|
      if @amiante.save
        format.html { redirect_to @amiante, notice: 'Amiante was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amiante }
      else
        format.html { render action: 'new' }
        format.json { render json: @amiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amiantes/1
  # PATCH/PUT /amiantes/1.json
  def update
    respond_to do |format|
      if @amiante.update(amiante_params)
        format.html { redirect_to @amiante, notice: 'Amiante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amiantes/1
  # DELETE /amiantes/1.json
  def destroy
    @amiante.destroy
    respond_to do |format|
      format.html { redirect_to amiantes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amiante
      @amiante = Amiante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amiante_params
      params.require(:amiante).permit(:identifiant, :composant, :partie_a_sonder, :description, :conclusion, :commentaires)
    end
end
