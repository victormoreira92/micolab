FactoryBot.define do
  factory :paciente do
    nome { Faker::Name.name }
    cns { Faker::Alphanumeric.alphanumeric(number: 10) }
    cpf { Faker::Alphanumeric.alphanumeric(number: 11) }
    data_nascimento { Faker::Date.between(from: '1989-09-23', to: '2000-09-25') }
    sexo { "MyString" }
    raca { Faker::Number.between(from: 1 , to: 4) }
    nome_mae {  Faker::Name.name }
  end
end
