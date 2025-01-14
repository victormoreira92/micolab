class Requisicao < ApplicationRecord
  before_create :set_status_requisicao
  after_create :set_numero_requisicao

  enum status_requisicao: {
    aberta: 0,
    fechada: 1
  }
  belongs_to :paciente
  has_many :amostras
  accepts_nested_attributes_for :amostras, allow_destroy: true
  has_one :informacao_clinica, dependent: :destroy
  accepts_nested_attributes_for :informacao_clinica, allow_destroy: true

  validates_presence_of :amostras, :informacao_clinica

  private

  def set_status_requisicao
    status_requisicao = :aberta
  end

  def set_numero_requisicao
    numero_requisicao = Time.now.year.to_s + Requisicao.last.id.to_s
  end
end
