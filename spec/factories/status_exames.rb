FactoryBot.define do
  factory :status_exame do
    etapa { 0 }
    descricao { "MyString" }
  end

  trait :em_analise do
    etapa { 0 }
  end

  trait :reprocessamento do
    etapa { 1 }
  end

  trait :realizado do
    etapa { 2 }
  end

  trait :aguardando_nova_amostra do
    etapa { 3 }
  end

  trait :nao_realizado do
    etapa { 4 }
  end
end
