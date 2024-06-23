class Amostra < ApplicationRecord
  before_create :set_status_amostra

 belongs_to :status_amostra
 belongs_to :paciente 
 has_one :material_biologico


 validates :data_coleta, presence: true  
  
 def set_status_amostra
  self.status_amostra = StatusAmostra.amostra_cadastrada.first
 end




end
