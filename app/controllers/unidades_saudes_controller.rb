class UnidadesSaudesController < ApplicationController
  load_and_authorize_resource
  #before_action :set_unidade_saude, only: %i[ show edit update destroy ]

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
        flash[:success] = t('activerecord.success.messages.cadastro', model: UnidadeSaude.model_name.human)
        format.html { redirect_to unidade_saude_path(@unidade_saude) }
      else
        flash[:error] = @unidade_saude.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @unidade_saude.update(unidade_saude_params)
        flash[:success] = t('activerecord.success.messages.update', model: UnidadeSaude.model_name.human)
        format.html { redirect_to unidade_saude_path(@unidade_saude) }
      else
        flash[:error] = @unidade_saude.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def obter_endereco
    endereco = Brazil::Cep.fetch(params[:cep])
    respond_to do |format|
      format.json { render json: endereco.to_json }
    end
  end

  private
    def set_unidade_saude
      @unidade_saude = UnidadeSaude.find(params[:id])
    end

    def unidade_saude_params
      params.require(:unidade_saude).permit(:nome, :cnes, :email_unidade_saude, :telefone, :cep, :cidade, :pais,
                                            :estado, :endereco, :complemento)
    end
end
