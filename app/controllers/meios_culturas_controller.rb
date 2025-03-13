class MeiosCulturasController < ApplicationController
  load_and_authorize_resource

  # GET /meios_culturas or /meios_culturas.json
  def index
    @meios_culturas = MeioCultura.all
  end

  # GET /meios_culturas/1 or /meios_culturas/1.json
  def show
  end

  # GET /meios_culturas/new
  def new
    @meio_cultura = MeioCultura.new
  end

  # GET /meios_culturas/1/edit
  def edit
  end

  def create
    @meio_cultura = MeioCultura.new(meio_cultura_params)
    respond_to do |format|
      if @meio_cultura.save
        flash[:success] = t('activerecord.success.messages.cadastro', model: MeioCultura.model_name.human)
        format.html { redirect_to meio_cultura_url(@meio_cultura) }
      else
        flash[:error] = @meio_cultura.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @meio_cultura.update(meio_cultura_params)
        flash[:success] = t('activerecord.success.messages.atualizado', model: MeioCultura.model_name.human)
        format.html { redirect_to meio_cultura_url(@meio_cultura) }
      else
        flash[:error] = @meio_cultura.errors.full_messages
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private
    def meio_cultura_params
      params.require(:meio_cultura).permit(:nome_meio_cultura, :validade_meio_cultura, :tipo_meio_cultura,
                                           :fabricante_meio_cultura, :lote_meio_cultura, )
    end
end
