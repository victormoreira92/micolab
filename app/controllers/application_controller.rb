class ApplicationController < ActionController::Base

  def after_sign_in_path_for(usuario)
    session[:usuario_id] = usuario.id
    session[:perfil] = usuario.perfil.to_sym
    root_path
  end

  def after_sign_out_path_for(usuario)
    home_index_path
  end

  def usuario_atual
    @usuario_atual ||= Usuario.find_by(id: session[:usuario_id])
  end

  def usuario_logado?
    usuario_atual.present?
  end

  def current_ability
    nome_controller = params[:controller].to_s
    ability_controller = "#{nome_controller.titleize.delete(' ')}Ability".constantize
    @current_ability = ability_controller.new(usuario_atual)
  end

end
