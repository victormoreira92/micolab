FactoryBot.define do
  factory :unidade_saude do
    nome { Faker::Company.industry }
    cnes { Faker::Alphanumeric.alpha(number: 10) }
    email_unidade_saude { Faker::Internet.email }
    telefone { Faker::PhoneNumber.phone_number }
    endereco { Faker::Address.street_address }
    cep { Faker::Address.zip_code }
    complemento { Faker::Address.secondary_address }
    cidade { Faker::Address.city }
    estado { Faker::Address.state }
    pais { Faker::Address.country }
  end
end
