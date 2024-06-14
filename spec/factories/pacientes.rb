FactoryBot.define do
  factory :paciente do
    nome { Faker::Name.name }
    cns { Faker::Alphanumeric.alphanumeric(number: 10) }
    cpf { Faker::Alphanumeric.alphanumeric(number: 11) }
    data_nascimento { Faker::Date.between(from: '1989-09-23', to: '2000-09-25') }
    sexo { "MyString" }
    etnia { Faker::Number.between(from: 1 , to: 4) }
    nome_mae {  Faker::Name.name }
  end

  trait :sem_etnia do 
    etnia { nil }
  end

  trait :sem_cns do
    cns { nil } 
  end

  trait :sem_data_nascimento do 
    data_nascimento { nil }
  end

  trait :sem_nome_mae do 
    nome_mae { nil }
  end

  trait :cpf do 
    cpf { nil }
  end

  trait :cns do 
    cns { nil }
  end
end
