class PacientesController < ApplicationController
  load_and_authorize_resource

  def index
    @pacientes = Paciente.all
  end

  def show; end

  def new
    @paciente = Paciente.new
  end

  def create

  end

  def edit
  end

  def update
  end

  private

  def paciente_params
    params.require(:paciente).permit(:nome_paciente, :nome_mae, :cpf_paciente, :data_nascimento, :sexo, :etnia,
                                     amostras_attributes: %i[numero_amostra data_coleta tipo_amostra status_amostra_id
                                                             material_biologico_id])
  end
end
