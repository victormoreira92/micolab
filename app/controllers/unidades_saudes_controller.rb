class UnidadesSaudesController < ApplicationController
  load_and_authorize_resource

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
        flash[:success] = t('activerecord.success.messages.create', model: UnidadeSaude.model_name.human)
        format.html { redirect_to unidade_saude_path(@unidade_saude) }

      else
        flash[:error] = @unidade_saude.errors.full_messages
        format.html { render :edit, status: :unprocessable_entity }
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
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def unidade_saude_params
    params.require(:unidade_saude).permit(:nome, :email_unidade_saude, :endereco, :telefone, :cep,
                                          :cidade, :estado, :complemento, :pais)
  end
end
