FactoryBot.define do
  factory :informacao_adicional do
    logradouro { "MyString" }
    numero { "MyString" }
    complemento { "MyString" }
    cep { "MyString" }
    bairro { "MyString" }
    uf { "MyString" }
    pais { "MyString" }
    cidade { "MyString" }
    pais { "MyString" }
    paciente { nil }
  end
end
