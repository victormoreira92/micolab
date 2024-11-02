class StatusAmostra < ApplicationRecord
  enum situacao: {
    cadastrada: 0,
    em_analise: 1,
    armazenada: 2,
    criopreservada: 3,
    descartada: 4
  }

  validates :situacao, :descricao, presence: true
end
