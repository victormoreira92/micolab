class ErrorsController < ApplicationController

  def acesso_negado
    render status: 403
  end

  def erro_interno
  end

  def pagina_nao_encontrada
  end
end
