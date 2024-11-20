class TecnicoAbility < PerfilGeralAbility
  attr_accessor :usuario

  ABILITIES_POR_CONTROLLER = {
    "unidades_saudes": 'permissoes_unidades_saudes',
    "pacientes": 'permissoes_pacientes'
  }.freeze

  def initialize(usuario, controller = nil, path = nil, full_path = nil)
    super(usuario, controller, path, full_path)
    cannot :index, Usuario
    metodo_permissoes = ABILITIES_POR_CONTROLLER.stringify_keys[controller]
    send(metodo_permissoes) if metodo_permissoes
  end

  def permissoes_unidades_saudes
    can :read, UnidadeSaude
  end

  def permissoes_pacientes
    can %i[read create update], Paciente
  end

end
