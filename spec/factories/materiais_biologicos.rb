FactoryBot.define do
  factory :material_biologico do
    nome_material_biologico { "Aspirado" }
    sigla { "ASP" }
    tipo_material_biologico { 1 }
  end

  trait :sem_nome_material_biologico do
    nome_material_biologico { nil }
  end

  trait :sem_sigla do
    sigla { nil }
  end

  trait :aspirado do
    nome_material_biologico { "Aspirado" }
    sigla { "ASP" }
  end

  trait :biopsia do
    nome_material_biologico { "Biópsia" }
    sigla { "BIO" }
  end

  trait :escarro do
    nome_material_biologico { "Escarro" }
    sigla { "ESC" }
  end

  trait :ferida do
    nome_material_biologico { "Ferida" }
    sigla { "FER" }
  end

  trait :fragemento do
    nome_material_biologico { "Fragmento" }
    sigla { "FRAG" }
  end

  trait :lavado do
    nome_material_biologico { "Lavado" }
    sigla { "LAV" }
  end

  trait :lavado_bronquico do
    nome_material_biologico { "Lavado brônquico" }
    sigla { "LAVB" }
  end

  trait :lesao do
    nome_material_biologico { "Lesão" }
    sigla { "LES" }
  end

  trait :linfonodo do
    nome_material_biologico { "Linfonodo" }
    sigla { "LINF" }
  end

  trait :liquido do
    nome_material_biologico { "Líquido" }
    sigla { "LIQ" }
  end

  trait :liquido_pleural do
    nome_material_biologico { "Líquido pleural" }
    sigla { "LIQP" }
  end

  trait :liquor do
    nome_material_biologico { "Líquor" }
    sigla { "LCR" }
  end

  trait :medula_ossea do
    nome_material_biologico { "Medula óssea" }
    sigla { "MED" }
  end

  trait :raspado do
    nome_material_biologico { "Raspado" }
    sigla { "RAS" }
  end

  trait :hemocultua do
    nome_material_biologico { "Hemocultura" }
    sigla { "HEM" }
  end

  trait :secrecao do
    nome_material_biologico { "Secreção" }
    sigla { "SECR" }
  end

  trait :soro do
    nome_material_biologico { "Soro"}
    sigla { "SORO" }
  end

  trait :swab do
    nome_material_biologico { "Swab" }
    sigla { "SWAB" }
  end

  trait :tecido do
    nome_material_biologico { "Tecido" }
    sigla { "TEC" }
  end

  trait :urina do
    nome_material_biologico { "Urina" }
    sigla { "URI" }
  end

end
