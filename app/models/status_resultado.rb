class StatusResultado < ApplicationRecord

  enum etapa: {
    cadastrado: 0,
    em_revisao: 2,
    liberado: 1,
    visualizado: 3,
  }

  validates :etapa, :descricao, presence: true
end
