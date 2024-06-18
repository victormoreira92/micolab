class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @usuarios = Usuario.all
  end

  def show
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(params[:usuario])
    if @usuario.save
      flash[:success] = t('Usuário criado com sucesso')
      format.html { redirect_to usuarios_path }
    else
      flash[:error] = @usuario.errors.full_messages
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        flash[:success] = t('activerecord.success.messages.update', model: 'Usuário')
        format.html { redirect_to usuario_path(@usuario.id) }
      else
        flash[:error] = @usuario.errors.full_messages
        format.html { redirect_to edit_usuario_path }
      end
    end
  end

  def toogle_desativacao
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :telefone, :registro, :email, :password, :password_confirmation)
  end 

end
