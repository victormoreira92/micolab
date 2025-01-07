FactoryBot.define do
  factory :amostra do
    numero_amostra { Faker::Lorem.characters(number: 11) }
    data_coleta { Faker::Number.between(from: 1, to: 10).days.ago }
    tipo_amostra { 0 }
    association :status_amostra
    association :material_biologico
    association :requisicao
  end

  trait :sem_data_coleta do
    data_coleta { nil }
  end

  trait :sem_tipo_amostra do
    tipo_amostra { nil }
  end



end
