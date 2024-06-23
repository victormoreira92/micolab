class Paciente < ApplicationRecord

  has_many :amostras
  has_many :unidade_saudes, through: :unidade_pacientes
  
  validates :nome, presence: true 
  validates :data_nascimento, presence: true
  validates :nome_mae, presence: true

  enum etnia:{
    amarela: 0,
    branca: 1,
    indgena: 2,
    preta: 3,
    nao_especificado: 4
  }

  
end
