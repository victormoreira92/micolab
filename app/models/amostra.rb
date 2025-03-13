class Amostra < ApplicationRecord
  before_validation :set_numero_amostra, on: :create
  before_validation :set_status_amostra, on: :create

  enum tipo_amostra: {
    amostra_in_natura: 0,
    isolado_bacteriano: 1,
    isolado_fungico: 2,
    lamina: 3
  }
  belongs_to :status_amostra
  belongs_to :material_biologico
  validates :tipo_amostra, :data_coleta, presence: true
  has_many :amostras_exames
  has_many :exames, through: :amostras_exames
  private

  def set_numero_amostra
    self.numero_amostra = Faker::Number.number(digits: 10).to_s
  end

  def set_status_amostra
    self.status_amostra = StatusAmostra.cadastrada.first
  end
end
