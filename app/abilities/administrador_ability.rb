class AdministradorAbility < PerfilGeralAbility
  attr_accessor :usuario

  ABILITIES_POR_CONTROLLER = {
    "usuarios": 'permissoes_usuarios',
    "unidades_saudes": 'permissoes_unidades_saudes',
    "requisicoes": 'permissoes_requisicoes'

  }.freeze

  def initialize(usuario, _controller = nil, _path = nil, _full_path = nil)
    super(usuario, _controller, _path, _full_path)
    can :manage, :all
    metodo_permissoes = ABILITIES_POR_CONTROLLER.stringify_keys[_controller]
    send(metodo_permissoes) if metodo_permissoes
  end

  def permissoes_unidades_saudes
    can :manage, UnidadeSaude
  end

  def permissoes_requisicoes
    can :manage, Requisicao
  end

end
