class UnidadePaciente < ApplicationRecord
  belongs_to :unidade_saude
  belongs_to :paciente
end
