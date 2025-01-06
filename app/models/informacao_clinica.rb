class InformacaoClinica < ApplicationRecord
  enum idade_gestacional: {
    primeiro_trimestre: 0,
    segundo_trimestre: 1,
    terceiro_trimestre: 2
  }

  enum suspeita_diagnostica: {
    paracoccidioidomicose: 0,
    histoplasmose: 1,
    aspergilose: 2,
    coccidiodomicose: 3,
    criptococose: 4,
    micose_sistemica: 5
  }

  enum tipo_lesao_pulmonar: {
    unilateral: 0,
    bilateral: 1
  }

  enum localizacao_lesao_pulmonar: {
    infiltrado_intersticial: 0,
    nodular: 1,
    micronodular: 2,
    cavitario: 3
  }

  enum fatores_associados: {
    linfoma: 0,
    tuberculose: 1,
    hiv_aids: 2,
    leucemia: 3,
    transplante: 4
  }

  enum tipo_antifungico: {
    fluconazol: 0,
    itraconazol: 1,
    voriconazol: 2,
    caspofungina: 3,
    anidulafungina: 4,
    anfob_desoxicolato: 5,
    anfob_formulacoes_lipídicas: 6
  }

  enum tipo_atividade_risco: {
    lavrador: 0,
    caverna: 1,
    toca_tatu: 2,
    excreta_morcego: 3,
    excreta_ave: 4,
    galinehiro: 5
  }

  enum caso: {
    supeito: 0,
    comunicante: 1,
    acompanhamento: 2,
    caso_grave: 3,
    obito: 4,
    surto: 5,
    vigilancia: 6,
    diagnostico: 7,
    ignorado: 8
  }
  belongs_to :paciente
  validates :data_inicio_sintomas, :caso, :numero_prontuario, presence: true
  validates_inclusion_of :lesao_pulmonar, :uso_antifungicos, :atividade_risco,
                         in: [true, false], message: 'não pode ficar em branco'
  validates_with InformacaoClinicaValidator

end
