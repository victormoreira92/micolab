class UnidadeSaude < ApplicationRecord
  validates :nome, presence: true 
  validates :cnes, presence: true
end
