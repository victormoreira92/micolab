namespace :db do
  namespace :carga do 
    desc "TODO"
    task status: :environment do
      status_amostra = YAML.load_file('lib/cargas/status_amostras.yml') 
      status_amostra.each do |linha|
        StatusAmostra.create(
          situacao: linha['status'],
          descricao: linha['descricao']
        )
      end
    end
  end
end
