class Requisicao < ApplicationRecord
  enum status_requisicao: {
    aberta: 0,
    fechada: 1
  }
  belongs_to :paciente
  has_many :amostras
  has_one :informacao_clinica, dependent: :destroy
  validates :status_requisicao, :numero_requisicao, presence: true
end