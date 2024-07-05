FactoryBot.define do
  factory :informacao_clinica do
    data_sintomas { "2024-06-26 13:17:33" }
    idade_gestacional { 1 }
    caso_agravo { 1 }
    etapa_tratamento { 1 }
    doenca { 1 }
    paciente { nil }
    em_tratamento { false }
  end
end
