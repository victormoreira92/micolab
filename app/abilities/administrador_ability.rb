class AdministradorAbility < PerfilGeralAbility
  attr_accessor :usuario

  ABILITIES_POR_CONTROLLER = {
    "usuarios": 'permissoes_usuarios',
    "unidades_saudes": 'permissoes_unidades_saudes',
    "requisicoes": 'permissoes_requisicoes',
    "meios_culturas": 'permissoes_meios_culturas'

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

  def permissoes_meios_culturas
    can :manage, MeioCultura
  end

end
