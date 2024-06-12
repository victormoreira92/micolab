class UsuarioController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  def index
    @usuarios = Usuario.all
  end

  def show
  end

  def create
    @usuario = Usuario.new(params[:usuario])
    if @usuario.save
      redirect_to @usuario
    else
      render 'new'
    end
  end

  def update
    if @usuario.update(params[:usuario])
      redirect_to @usuario
    else
      render 'edit'
    end
  end

  def toogle_desativacao

  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

end
