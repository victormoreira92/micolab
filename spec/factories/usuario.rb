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

  trait :email do 
    email { nil }
  end

  trait :password do 
    password { nil }
  end

  trait :password_confirmation do 
    password_confirmation { nil }
  end

end