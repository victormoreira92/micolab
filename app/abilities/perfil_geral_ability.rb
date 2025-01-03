class PerfilGeralAbility
  include CanCan::Ability

  def initialize(usuario, _controller = nil, _path = nil, _full_path = nil)
    cannot :manage, :all
    can :read, Usuario, id: usuario.id
  end
end
