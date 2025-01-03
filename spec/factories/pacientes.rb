FactoryBot.define do
  factory :paciente do
    nome_paciente { Faker::Name.name }
    nome_mae { Faker::Name.name }
    cpf_paciente { Faker::Lorem.characters(number: 11) }
    data_nascimento { Faker::Number.between(from: 1, to: 10).years.ago }
    sexo { 1 }
    etnia { 1 }
    tipo_idade { 2 }
  end

  trait :sem_nome_paciente do
    nome_paciente { nil }
  end

  trait :sem_nome_mae do
    nome_mae { nil }
  end

  trait :sem_data_nascimento do
    data_nascimento { nil }
  end

  trait :sem_sexo do
    sexo { nil }
  end

  trait :masculino do
    sexo { 0 }
  end

  trait :feminino do
    sexo { 1 }
  end

end
