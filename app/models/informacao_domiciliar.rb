class InformacaoDomiciliar < ApplicationRecord
  enum zona: {
    urbana: 0,
    periurbana: 1,
    rural: 2,
    silvestre: 3,
    ignorado: 4
  }

  belongs_to :paciente
  validates :municipio_paciente, :estado_paciente, :logradouro_paciente, :cep_paciente, :bairro_paciente,
            :pais_paciente, :zona, presence: true
end
