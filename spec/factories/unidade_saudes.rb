FactoryBot.define do
  factory :unidade_saude do
    nome { Faker::Name.name_with_middle }
    cnes { Faker::Alphanumeric.alphanumeric(number: 10)}
  end 

  trait :sem_nome do 
    nome { nil }
  end
end
