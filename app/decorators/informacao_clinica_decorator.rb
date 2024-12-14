class InformacaoClinicaDecorator < ApplicationDecorator
  delegate_all

  def data_inicio_sintomas_formatada
    object.data_inicio_sintomas.strftime('%d/%m/%Y')
  end

  def idade_gestacional_formatada
    object.idade_gestacional || 'Não se aplica'
  end

  def lesao_pulmonar_formatado
    object.lesao_pulmonar || 'Sem lesão'
  end

  def uso_antifungicos_formatado
    object.uso_antifungicos || 'Sem uso'
  end

  def atividade_risco_formatada
    object.atividade_risco || 'Sem atividade de risco'
  end


end
