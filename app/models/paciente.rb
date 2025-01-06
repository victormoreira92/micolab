class Paciente < ApplicationRecord
  has_many :pacientes_unidades_saudes
  has_many :unidades_saudes, through: :pacientes_unidades_saudes
  has_many :requisicoes
  has_one :informacao_domiciliar, dependent: :destroy
  validates :nome_mae, :nome_paciente, :data_nascimento, :sexo, presence: true

  enum etnia: {
    amarela: 0,
    branca: 1,
    indigena: 2,
    preta: 3,
    parda: 4
  }

  enum sexo: {
    masculino: 0,
    feminino: 1
  }

  enum tipo_idade: {
    dias: 0,
    meses: 1,
    anos: 2
  }



end
