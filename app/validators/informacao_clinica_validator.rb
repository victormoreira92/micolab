class InformacaoClinicaValidator < ActiveModel::Validator
  def validate(record)
    validar_idade_gestacional(record)
    validar_lesao_pulmonar(record)
  end

  def validar_idade_gestacional(record)
    return if record.idade_gestacional.nil?
    if record.paciente.masculino? && record.idade_gestacional
      record.errors.add(:idade_gestacional, :paciente_sexo_masculino)
    end
  end

  def validar_lesao_pulmonar(record)
    return unless record.lesao_pulmonar
    binding.pry
    if record.lesao_pulmonar && record.tipo_lesao_pulmonar.nil? && record.localizacao_lesao_pulmonar.nil?
      record.errors.add(:lesao_pulmonar, :lesao_pulmonar_sem_descricao)
    end
  end

end
