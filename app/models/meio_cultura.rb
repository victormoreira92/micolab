class MeioCultura < ApplicationRecord
  enum tipo_meio_cultura: {
    liquido: 0,
    solido: 1,
    semisolido: 2
  }

  validates :nome_meio_cultura, :validade_meio_cultura, :tipo_meio_cultura,
            :fabricante_meio_cultura, :lote_meio_cultura, presence: true
end
