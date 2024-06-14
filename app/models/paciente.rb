class Paciente < ApplicationRecord

  validades :nome, presence: true 
  validates :data_nascimento, presence: true

  enum etnia:{
    amarela: 0,
    branca: 1,
    indgena: 2,
    preta: 3,
    nao_especificado: 4
  }
end
