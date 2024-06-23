class StatusAmostra < ApplicationRecord

  has_many :amostras

  enum situacao: {
    amostra_cadastrada: 0,
    amostra_recebida_laboratorio: 1,
    amostra_processada: 2,
    amostra_liberada: 3,
    amostra_descartada: 4,
    amostra_criopreservada: 3
  }

  validates :descricao, presence: true
end
