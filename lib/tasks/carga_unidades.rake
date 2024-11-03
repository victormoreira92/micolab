require 'csv'

namespace :db do
  namespace :carga do
    desc 'Popula e atualiza  Unidades de Saude'
    task unidades: :environment do
      unidades = CSV.read('lib/cargas/unidades.csv', headers: true)
      atributos = unidades.headers
      unidades.each do |row|
        unidade = UnidadeSaude.find_or_initialize_by(nome: row['cnes'])
        row.headers.each do |atributo|
          unidade.send("#{atributo}=", row[atributo])
        end
        unidade.save
      end
    end
  end
end
