class Amostra < ApplicationRecord
  before_create :set_numero_inscricao

  enum tipo_amostra: {
    amostra_in_natura: 0,
    isolado_bacteriano: 1,
    isolado_fungico: 2,
    lamina: 3
  }
  belongs_to :status_amostra
  belongs_to :material_biologico
  belongs_to :paciente
  validates :tipo_amostra, :data_coleta, presence: true

  private

  def set_numero_inscricao
    numero_amostra = "#{material_biologico.sigla}-#{123}"
  end
end
