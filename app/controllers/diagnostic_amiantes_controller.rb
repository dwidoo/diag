class DiagnosticAmiantesController < ApplicationController
  before_action :set_diagnostic_amiante, only: [:show, :edit, :update, :destroy]

  # GET /diagnostic_amiantes
  # GET /diagnostic_amiantes.json
  def index
    @diagnostic_amiantes = DiagnosticAmiante.all
  end

  # GET /diagnostic_amiantes/1
  # GET /diagnostic_amiantes/1.json
  def show
  end

  # GET /diagnostic_amiantes/new
  def new
    @diagnostic_amiante = DiagnosticAmiante.new
  end

  # GET /diagnostic_amiantes/1/edit
  def edit
  end

  # POST /diagnostic_amiantes
  # POST /diagnostic_amiantes.json
  def create
    @diagnostic_amiante = DiagnosticAmiante.new(diagnostic_amiante_params)

    respond_to do |format|
      if @diagnostic_amiante.save
        format.html { redirect_to @diagnostic_amiante, notice: 'Diagnostic amiante was successfully created.' }
        format.json { render action: 'show', status: :created, location: @diagnostic_amiante }
      else
        format.html { render action: 'new' }
        format.json { render json: @diagnostic_amiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnostic_amiantes/1
  # PATCH/PUT /diagnostic_amiantes/1.json
  def update
    respond_to do |format|
      if @diagnostic_amiante.update(diagnostic_amiante_params)
        format.html { redirect_to @diagnostic_amiante, notice: 'Diagnostic amiante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @diagnostic_amiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnostic_amiantes/1
  # DELETE /diagnostic_amiantes/1.json
  def destroy
    @diagnostic_amiante.destroy
    respond_to do |format|
      format.html { redirect_to diagnostic_amiantes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnostic_amiante
      @diagnostic_amiante = DiagnosticAmiante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnostic_amiante_params
      params.require(:diagnostic_amiante).permit(:docs, :accompagnateur, :commentaires, :conclusions)
    end
end
