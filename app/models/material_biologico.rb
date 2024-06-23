class MaterialBiologico < ApplicationRecord
  has_many :amostras

  enum tipo:{
    esteril: 0,
    nao_esteril: 1
  }
end
