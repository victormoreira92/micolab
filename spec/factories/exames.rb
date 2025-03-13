FactoryBot.define do
  factory :exame do
    nome_exame { "MyString" }
    codigo { "MyString" }
    metodologia { 1 }
    descricao { "MyString" }
    prazo_liberacao { 1 }
    data_realizacao { "2025-03-13" }
  end
end
