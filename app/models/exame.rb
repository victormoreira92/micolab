class Exame < ApplicationRecord
  enum metodologia: {
    micologico_direto: 0,
    cultura_fungos: 1,
    automatizado: 2,
    diagnostico_imunologico: 3,
    diagnostico_molecular: 4
  }
  belongs_to :status_exame
  has_many :amostras_exames
  has_many :amostras, through: :amostras_exames


  validates :nome_exame, :metodologia, :prazo_liberacao, presence: true
end
