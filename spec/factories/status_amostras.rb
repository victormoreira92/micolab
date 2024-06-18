FactoryBot.define do
  factory :status_amostra do
    situacao { 1 }
    descricao { Faker::Lorem.paragraph }
  end

  trait :sem_descricao do 
    descricao { nil }
  end

  trait :sem_status do 
    situacao { nil }
  end

  trait :cadastrada do 
    situacao { 0 }
    descricao { Faker::Lorem.sentences}
  end

  trait :processada do 
    situacao { 1 }
    descricao { Faker::Lorem.sentences}
  end

  trait :descartada do 
    situacao { 2 }
    descricao { Faker::Lorem.sentences}
  end

  trait :criopreservada do 
    situacao { 3 }
    descricao { Faker::Lorem.sentences}
  end

end
