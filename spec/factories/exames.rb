FactoryBot.define do
  factory :exame do
    nome_exame { Faker::Book.name }
    codigo { Faker::Alphanumeric.alphanumeric(number: 3, min_alpha: 3) }
    metodologia { 0 }
    descricao { Faker::Lorem.sentence }
    prazo_liberacao { 7 }
    data_realizacao { nil }
    association :status_exame
  end

  trait :sem_nome_exame do
    nome_exame { nil }
  end

  trait :sem_metodologia do
    metodologia { nil }
  end

  trait :sem_prazo_liberacao do
    prazo_liberacao { nil }
  end
end
