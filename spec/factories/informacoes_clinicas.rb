FactoryBot.define do
  factory :informacao_clinica do
    data_inicio_sintomas { Faker::Number.between(from: 1, to: 10).days.ago }
    idade_gestacional { nil }
    suspeita_diagnostica { 1 }
    lesao_pulmonar { false }
    tipo_lesao_pulmonar { 1 }
    localizacao_lesao_pulmonar { 1 }
    fatores_associados { 1 }
    uso_antifungicos { false }
    atividade_risco { false }
    tipo_antifungico { 1 }
    tipo_atividade_risco { 1 }
    numero_prontuario { Faker::Lorem.characters(number: 4) }
    ocupacao { Faker::Lorem.sentence }
    caso { 1 }
    association :requisicao
  end

  trait :sem_data_inicio_sintomas do
    data_inicio_sintomas { nil }
  end

  trait :sem_caso do
    caso { nil }
  end

  trait :sem_numero_prontuario do
    numero_prontuario { nil }
  end

  trait :sem_lesao_pulmonar do
    lesao_pulmonar { nil }
  end

  trait :sem_uso_antifungicos do
    uso_antifungicos { nil }
  end

  trait :sem_atividade_risco do
    atividade_risco { nil }
  end

  trait :idade_gestacional do
    idade_gestacional { 1 }
  end

end
