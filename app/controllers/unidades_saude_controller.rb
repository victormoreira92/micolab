class UnidadesSaudeController < ApplicationController
  before_action :set_unidade_saude, only: %i[ show edit update destroy ]

  # GET /unidades_saude or /unidades_saude.json
  def index
    @unidade_saudes = UnidadeSaude.all
  end

  # GET /unidades_saude/1 or /unidades_saude/1.json
  def show
  end

  # GET /unidades_saude/new
  def new
    @unidade_saude = UnidadeSaude.new
  end

  # GET /unidades_saude/1/edit
  def edit
  end

  # POST /unidades_saude or /unidades_saude.json
  def create
    @unidade_saude = UnidadeSaude.new(unidade_saude_params)

    respond_to do |format|
      if @unidade_saude.save
        format.html { redirect_to unidade_saude_url(@unidade_saude), notice: "Unidade saude was successfully created." }
        format.json { render :show, status: :created, location: @unidade_saude }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unidade_saude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidades_saude/1 or /unidades_saude/1.json
  def update
    respond_to do |format|
      if @unidade_saude.update(unidade_saude_params)
        format.html { redirect_to unidade_saude_url(@unidade_saude), notice: "Unidade saude was successfully updated." }
        format.json { render :show, status: :ok, location: @unidade_saude }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unidade_saude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades_saude/1 or /unidades_saude/1.json
  def destroy
    @unidade_saude.destroy

    respond_to do |format|
      format.html { redirect_to unidade_saudes_url, notice: "Unidade saude was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidade_saude
      @unidade_saude = UnidadeSaude.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unidade_saude_params
      params.require(:unidade_saude).permit(:unidade_nome, :email, :telefone, :cep, :municipio, :unidade_federativa)
    end
end
