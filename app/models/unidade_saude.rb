class UnidadeSaude < ApplicationRecord
  has_many :paciente_unidade_saudes
  has_many :pacientes, through: :paciente_unidade_saudes

  validates :email_unidade_saude, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :endereco, :nome, :cep, :email_unidade_saude, :telefone,
            :cidade, :estado, :pais, presence: true

end
