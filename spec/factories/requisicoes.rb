FactoryBot.define do
  factory :requisicao do
    numero_requisicao { Faker::Alphanumeric.alphanumeric(number: 11) }
    status_requisicao { 0 }
    association :paciente
  end

  trait :fechada do
    status_requisicao { 1 }
  end

  trait :sem_paciente_id do
    paciente_id { nil }
  end

  trait :sem_status_requisicao do
    status_requisicao { nil }
  end

  trait :sem_numero_requisicao do
    numero_requisicao { nil }
  end
end
