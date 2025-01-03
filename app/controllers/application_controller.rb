class ApplicationController < ActionController::Base
  before_action :authenticate_usuario!
  skip_before_action :authenticate_usuario!, if: :devise_controller?
  rescue_from CanCan::AccessDenied, with: :acesso_negado

  def after_sign_in_path_for(usuario)
    session[:usuario_id] = usuario.id
    root_path
  end

  def after_sign_out_path_for(usuario)
    home_index_path
  end

  def authenticate_usuario
    unless usuario_logado?
      redirect_to home_index_path, alert: 'Você precisa estar logado para acessar esta página.'
    end
  end

  def usuario_logado?
   usuario_atual.present?
  end

  def usuario_atual
    @usuario_atual ||= Usuario.find_by(id: session[:usuario_id]) if session[:usuario_id]
  end

  def usuario_logado?
    usuario_atual.present?
  end


  def current_ability
    path = request.path.to_s
    full_path = request.fullpath.to_s
    nome_controller = params[:controller]
    perfil = usuario_atual.perfil
    ability_controller = "#{perfil.titleize.delete(' ')}Ability".constantize
    @current_ability = ability_controller.new(usuario_atual, nome_controller, path, full_path)
  end

  private
  def acesso_negado
    redirect_to '/403'
  end

end
