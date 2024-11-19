class StatusExame < ApplicationRecord

  enum etapa: {
    em_analise: 0,
    reprocessamento: 1,
    realizado: 2,
    aguardando_nova_amostra: 3,
    nao_realizado: 4
  }

  validates :etapa, :descricao, presence: true
end
