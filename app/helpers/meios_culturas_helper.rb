module MeiosCulturasHelper

  def tipo_meio_cultura
    MeioCultura.tipos_meios_culturas.map{ |k, _v| [k.humanize.capitalize, k.to_sym] }
  end
end
