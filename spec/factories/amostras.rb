FactoryBot.define do
  factory :amostra do
    numero_interno { Faker::Alphanumeric.alphanumeric(number: 3)  }
    tipo_material { 1 }
    data_coleta { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default)  }
    data_processamento { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default) }
    data_recebimento { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default) }
  end
end
