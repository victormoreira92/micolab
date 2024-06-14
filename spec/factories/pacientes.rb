FactoryBot.define do
  factory :paciente do
    nome { "MyString" }
    cns { "MyString" }
    cpf { "MyString" }
    data_nascimento { "2024-06-14 12:29:11" }
    sexo { "MyString" }
    raca { 1 }
    nome_mae { "MyString" }
  end
end
