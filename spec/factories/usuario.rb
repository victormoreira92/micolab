FactoryBot.define do
  factory :usuario do
    nome { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'micolab123' }
    password_confirmation { 'micolab123' }
    perfil { "admin" }
  end

  trait :sem_nome do 
    nome { nil }
  end

  trait :sem_email do 
    email { nil }
  end

  trait :sem_senha do 
    password { nil }
  end

  trait :sem_confirmacao_senha do 
    password_confirmation { nil }
  end

end