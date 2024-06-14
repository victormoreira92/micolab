FactoryBot.define do
  factory :status_amostra do
    situacao { 1 }
    descricao { Faker::Lorem.paragraph }
  end
  trait :sem_descricao do 
    descricao { nil }
  end
end
