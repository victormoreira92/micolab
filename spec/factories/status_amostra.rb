FactoryBot.define do
  factory :status_amostra do
    descricao { 'Amostra cadastrada' }
    situacao { 0 }
  end

  trait :sem_descricao do
    descricao { nil }
  end

  trait :sem_situacao do
    situacao { nil }
  end

  trait :cadastrada do
    status { 0 }
  end

  trait :em_analise do
    status { 1 }
  end

  trait :armazenada do
    status { 2 }
  end

  trait :criopreservada do
    status { 3 }
  end

  trait :descartada do
    status { 4 }
  end
end
