FactoryBot.define do
  factory :informacao_domiciliar do
    municipio_paciente { Faker::Address.city }
    logradouro_paciente { Faker::Address.street_name }
    cep_paciente { Faker::Address.postcode }
    bairro_paciente { Faker::Address.street_name }
    estado_paciente { Faker::Address.state }
    zona { 1 }
    pais_paciente { Faker::Address.country }
    association :paciente
  end

  trait :sem_municipio_paciente do
    municipio_paciente { nil }
  end

  trait :sem_estado_paciente do
    estado_paciente { nil }
  end

  trait :sem_logradouro_paciente do
    logradouro_paciente { nil }
  end

  trait :sem_cep_paciente do
    cep_paciente { nil }
  end

  trait :sem_bairro_paciente do
    bairro_paciente { nil }
  end

  trait :sem_pais_paciente do
    pais_paciente { nil }
  end

  trait :sem_zona do
    zona { nil }
  end
end
