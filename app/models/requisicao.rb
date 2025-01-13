class Requisicao < ApplicationRecord
  enum status_requisicao: {
    aberta: 0,
    fechada: 1
  }
  belongs_to :paciente
  has_many :amostras
  accepts_nested_attributes_for :amostras, reject_if: :all_blank, allow_destroy: true
  has_one :informacao_clinica, dependent: :destroy
  validates :status_requisicao, :numero_requisicao, presence: true
end