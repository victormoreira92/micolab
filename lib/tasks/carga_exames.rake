namespace :db do
  namespace :carga do
    desc 'Popula e atualiza o modelo Exames'
    task exames: :environment do
      arquivo = {
        'lib/cargas/exames.yml' => Exame
      }

      arquivo.keys.each do |dados_arquivo|
        file = YAML.load_file(dados_arquivo)
        file.each do |dado|
          exame = arquivo[dados_arquivo].find_or_initialize_by(codigo: dado['codigo'])
          exame.update!(nome_exame: dado['nome_exame'],
                        metodologia: dado['metodologia'],
                        descricao: dado['descricao'],
                        prazo_liberacao: dado['prazo_liberacao'])
        end
      end
    end
  end
end
