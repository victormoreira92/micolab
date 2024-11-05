class UnidadesSaudesController < ApplicationController
  before_action :set_unidade_saude, only: %i[ show edit update destroy ]

  def index
    @unidades_saudes = UnidadeSaude.all
  end

  def show
  end

  def new
    @unidade_saude = UnidadeSaude.new
  end

  def edit
  end

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

  private
    def set_unidade_saude
      @unidade_saude = UnidadeSaude.find(params[:id])
    end

    def unidade_saude_params
      params.require(:unidade_saude).permit(:unidade_nome, :email, :telefone, :cep, :municipio, :unidade_federativa)
    end
end
