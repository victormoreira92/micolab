module RequisicoesHelper
  def suspeita_diagnostica
    InformacaoClinica.suspeita_diagnosticas.map{|k, v| [k.humanize.capitalize, v]}
  end

  def fatores_associados
    InformacaoClinica.fatores_associados.map{|k, v| [k.humanize.capitalize, v]}
  end

  def casos
    InformacaoClinica.casos.map{|k, v| [k.humanize.capitalize, v]}
  end

  def tipo_antifungicos
    InformacaoClinica.tipo_antifungicos.map{|k, v| [k.humanize.capitalize, v]}
  end

  def tipo_lesao_pulmonar
    InformacaoClinica.tipo_lesao_pulmonars.map{|k, v| [k.humanize.capitalize, v]}
  end

  def localizacao_lesao_pulmonar
    InformacaoClinica.localizacao_lesao_pulmonars.map{|k, v| [k.humanize.capitalize, v]}
  end

  def tipo_atividade_riscos
    InformacaoClinica.tipo_atividade_riscos.map{|k, v| [k.humanize.capitalize, v]}
  end

  def zona
    InformacaoDomiciliar.zonas.map{|k, v| [k.humanize.capitalize, v]}
  end

  def material_biologico
    MaterialBiologico.all.map{|k,v| [k.nome_material_biologico, k.id]}  end
end

