class UnidadeSaude < ApplicationRecord

  has_many :pacientes

  validates :nome, presence: true 
  validates :cnes, presence: true
end
