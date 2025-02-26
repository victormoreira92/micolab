json.set! :data do
  json.array! @meios_culturas do |meio_cultura|
    json.partial! 'meios_culturas/meio_cultura', meio_cultura: meio_cultura
    json.url  "
              #{link_to 'Show', meio_cultura }
              #{link_to 'Edit', edit_meio_cultura_path(meio_cultura)}
              #{link_to 'Destroy', meio_cultura, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end