class RequisicoesController < ApplicationController
  load_and_authorize_resource
  before_action :load_pacientes, only: %i[new edit create update]

  def index
    @requisicoes = Requisicao.all
  end

  def show; end

  def new
    @requisicao = Requisicao.new
  end

  def create
    @requisicao = Requisicao.new(requisicao_params)
    respond_to do |format|
      if @requisicao.save
        flash[:success] = t('activerecord.success.messages.cadastro', model: Requisicao.model_name.human)
        format.html { redirect_to requisicao_path(@requisicao) }
      else
        flash[:error] = @requisicao.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @requisicao.update(requisicao_params)
        flash[:success] = t('activerecord.success.messages.atualizado', model: Requisicao.model_name.human)
        format.html { redirect_to requisicao_path(@requisicao) }
      else
        flash[:error] = @requisicao.errors.full_messages
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
  def requisicao_params
    params.require(:requisicao).permit(:numero_requisicao, :paciente_id,
                                       amostras_attributes: %i[ id numero_amostra data_coleta tipo_amostra
                                                                status_amostra_id material_biologico_id _destroy],
                                       informacao_clinica_attributes: %i[ id data_inicio_sintomas idade_gestacional
                                                                          suspeita_diagnostica lesao_pulmonar
                                                                          tipo_lesao_pulmonar localizacao_lesao_pulmonar
                                                                          fatores_associados uso_antifungicos
                                                                          tipo_antifungico tipo_atividade_risco
                                                                          numero_prontuario ocupacao caso
                                                                          atividade_risco _destroy]
    )
  end

  def load_pacientes
    @pacientes = Paciente.all
  end
end
