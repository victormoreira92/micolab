class PacientesController < ApplicationController
  load_and_authorize_resource

  def index
    @pacientes = Paciente.all
  end

  def show; end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def paciente_params
    params.require(:paciente).permit(:nome_paciente)
  end
end
