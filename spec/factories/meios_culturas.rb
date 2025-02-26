FactoryBot.define do
  factory :meio_cultura do
    nome_meio_cultura { Faker::Commerce.product_name }
    validade_meio_cultura { 4.months.ago }
    descricao_meio_cultura { Faker::Lorem.sentence }
    tipo_meio_cultura { 0 }
    fabricante_meio_cultura { Faker::Company.name }
    lote_meio_cultura { Faker::Alphanumeric.alphanumeric(number: 8, min_alpha: 3, min_numeric: 3) }
    quantidade { [*1..100].sample }
  end
end
