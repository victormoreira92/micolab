class AdministradorAbility < PerfilGeralAbility
  attr_accessor :usuario

  ABILITIES_POR_CONTROLLER = {
    "usuarios": 'permissoes_usuarios'
  }.freeze

  def initialize(usuario, _controller = nil, _path = nil, _full_path = nil)
    super(usuario, _controller, _path, _full_path)
    can :manage, :all
    metodo_permissoes = ABILITIES_POR_CONTROLLER.stringify_keys[_controller]
    send(metodo_permissoes) if metodo_permissoes
  end
end
