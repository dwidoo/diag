class DiagnostiqueursController < ApplicationController
  before_action :set_diagnostiqueur, only: [:show, :edit, :update, :destroy]

  # GET /diagnostiqueurs
  # GET /diagnostiqueurs.json
  def index
    @diagnostiqueurs = Diagnostiqueur.all
  end

  # GET /diagnostiqueurs/1
  # GET /diagnostiqueurs/1.json
  def show
  end

  # GET /diagnostiqueurs/new
  def new
    @diagnostiqueur = Diagnostiqueur.new
  end

  # GET /diagnostiqueurs/1/edit
  def edit
  end

  # POST /diagnostiqueurs
  # POST /diagnostiqueurs.json
  def create
    @diagnostiqueur = Diagnostiqueur.new(diagnostiqueur_params)

    respond_to do |format|
      if @diagnostiqueur.save
        format.html { redirect_to @diagnostiqueur, notice: 'Diagnostiqueur was successfully created.' }
        format.json { render action: 'show', status: :created, location: @diagnostiqueur }
      else
        format.html { render action: 'new' }
        format.json { render json: @diagnostiqueur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnostiqueurs/1
  # PATCH/PUT /diagnostiqueurs/1.json
  def update
    respond_to do |format|
      if @diagnostiqueur.update(diagnostiqueur_params)
        format.html { redirect_to @diagnostiqueur, notice: 'Diagnostiqueur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @diagnostiqueur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnostiqueurs/1
  # DELETE /diagnostiqueurs/1.json
  def destroy
    @diagnostiqueur.destroy
    respond_to do |format|
      format.html { redirect_to diagnostiqueurs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnostiqueur
      @diagnostiqueur = Diagnostiqueur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnostiqueur_params
      params.require(:diagnostiqueur).permit(:nom, :prenom, :raison_sociale, :num_certif, :validite_certif, :obtention_certif, :adresse, :code_postal, :commune, :tel, :email, :num_tva, :siret, :nom_assureur, :coordonnees_assureur, :num_assurance, :validite_assurance)
    end
end
