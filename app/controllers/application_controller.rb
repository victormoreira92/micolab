class ApplicationController < ActionController::Base

  def after_sign_in_path_for(usuario)
    session[:usuario_id] = usuario.id
    home_path
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

end
