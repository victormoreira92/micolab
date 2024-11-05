FactoryBot.define do
  factory :usuario do
    nome { Faker::Name.name }
    registro { '123456-2' }
    data_desativacao { nil }
    password_digest { 'micolab123' }
    cpf { '14454925712' }
    email { Faker::Internet.email  }
  end


end
