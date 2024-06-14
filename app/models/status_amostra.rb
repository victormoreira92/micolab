class StatusAmostra < ApplicationRecord

  enum situacao: {
    cadastrada: 0,
    processada: 1,
    descartada: 2,
    criopreservada: 3
  }

  validates :descricao, presence: true
end
