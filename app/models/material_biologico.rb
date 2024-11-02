class MaterialBiologico < ApplicationRecord

  enum tipo_material_biologico: {
    nobre: 0,
    infeccioso: 1
  }

  validates :nome_material_biologico, :sigla, presence: true
end
