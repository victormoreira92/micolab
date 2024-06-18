class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum perfil:{
    admin: 0,
    analista: 1,
    tecnico: 2,
    secretario: 3
  }

  validates :nome, presence: true


  
end
