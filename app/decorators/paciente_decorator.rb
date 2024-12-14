class PacienteDecorator < ApplicationDecorator
  delegate_all

  def cpf_formatado
    CPF.new(object.cpf_paciente).formatted
  end

  def data_nascimento_formatada
    object.data_nascimento.strftime('%d/%m/%Y')
  end
  
end
