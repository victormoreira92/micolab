require 'rails_helper'

RSpec.describe "Errors", type: :request do
  describe "GET /acesso_negado" do
    it "returns http success" do
      get "/errors/acesso_negado"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /erro_interno" do
    it "returns http success" do
      get "/errors/erro_interno"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /pagina_nao_encontrada" do
    it "returns http success" do
      get "/errors/pagina_nao_encontrada"
      expect(response).to have_http_status(:success)
    end
  end

end
