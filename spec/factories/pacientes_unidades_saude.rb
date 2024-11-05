FactoryBot.define do
  factory :paciente_unidade_saude do
    association :unidade_saude
    association :paciente
  end
end
