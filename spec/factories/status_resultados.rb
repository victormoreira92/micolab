FactoryBot.define do
  factory :status_resultado do
    etapa { 1 }
    descricao { "MyString" }
  end

  trait :cadastrado do
    etapa { :cadastrado }
  end

  trait :em_revisao do
    etapa { :em_revisao }
  end

  trait :liberado do
    etapa { :liberado }
  end

  trait :visualizado do
    etapa { :visualizado }
  end

  trait :sem_etapa do
    etapa { nil }
  end

  trait :sem_descricao do
    descricao { nil }
  end
end
