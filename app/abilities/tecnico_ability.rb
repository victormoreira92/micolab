class TecnicoAbility < PerfilGeralAbility
  attr_accessor :usuario

  ABILITIES_POR_CONTROLLER = {
    "usuarios": 'permissoes_usuarios'
  }.freeze

  def initialize(usuario, controller = nil, path = nil, full_path = nil)
    super(usuario, controller, path, full_path)
    cannot :index, Usuario
    metodo_permissoes = ABILITIES_POR_CONTROLLER.stringify_keys[controller]
    send(metodo_permissoes) if metodo_permissoes
  end

  
end
