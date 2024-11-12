FactoryBot.define do
  factory :usuario do
    nome { Faker::Name.name }
    registro { '123456-2' }
    password { 'micolab123' }
    password_confirmation { 'micolab123' }
    email { Faker::Internet.email  }
  end

  trait :sem_confirmacao_senha do
    password_confirmation { nil }
  end

  trait :sem_senha do
    password { nil }
  end

  trait :sem_email do
    email { nil }
  end

  trait :sem_nome do
    nome { nil }
  end


end
