class Amostra < ApplicationRecord

 belongs_to :status_amostra
 belongs_to :paciente 
 validates :data_coleta, presence: true  
  
end
