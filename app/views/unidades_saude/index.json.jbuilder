json.set! :data do
  json.array! @unidade_saudes do |unidade_saude|
    json.partial! 'unidades_saude/unidade_saude', unidade_saude: unidade_saude
    json.url  "
              #{link_to 'Show', unidade_saude }
              #{link_to 'Edit', edit_unidade_saude_path(unidade_saude)}
              #{link_to 'Destroy', unidade_saude, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end