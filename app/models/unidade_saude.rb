class UnidadeSaude < ApplicationRecord

  has_many :pacientes, through: :unidade_pacientes

  validates :nome, presence: true 
  validates :cnes, presence: true
end
