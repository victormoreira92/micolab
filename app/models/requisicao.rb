class Requisicao < ApplicationRecord
  before_validation :set_status_requisicao, on: :create
  before_validation :set_numero_requisicao, on: [:create, :update]

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
    self.status_requisicao = :aberta
  end

  def set_numero_requisicao
    self.numero_requisicao = "#{Time.now.year}#{Faker::Number.number(digits: 7)}"
  end
end
