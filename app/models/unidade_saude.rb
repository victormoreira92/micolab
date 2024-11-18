class UnidadeSaude < ApplicationRecord
  has_many :pacientes_unidades_saudes
  has_many :pacientes, through: :pacientes_unidades_saudes

  validates :email_unidade_saude, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :endereco, :nome, :cep, :email_unidade_saude, :telefone,
            :cidade, :estado, :pais, presence: true

  

end
