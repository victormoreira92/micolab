namespace :db do
  namespace :carga do
    desc 'Popula o banco com os modelos de Status'
    task status: :environment do
      arquivos = {
        'lib/cargas/status/status_exames.yml' => StatusExame
      }

      arquivos.keys.each do |arquivo|
        file = YAML.load_file(arquivo)
        file.each do |dado|
          status = arquivos[arquivo].find_or_initialize_by(etapa: dado['etapa'].to_sym)
          status.update!(etapa: dado['etapa'], descricao: dado['descricao'])
        end
      end

    end
  end
end
