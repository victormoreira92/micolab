class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  enum perfil:{
    administrador: 0,
    analista: 1,
    tecnico: 2,
    secretario: 3,
    profissional_saude: 4
  }

  validates :nome, presence: true



end
