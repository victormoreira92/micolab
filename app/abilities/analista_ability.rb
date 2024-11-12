class AnalistaAbility < PerfilGeralAbility
  attr_accessor :usuario

  ABILITIES_POR_CONTROLLER = {
    "usuarios": 'permissoes_usuarios',
    "unidades_saudes": 'permissoes_unidades_saudes'
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


end
