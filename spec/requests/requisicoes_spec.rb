require 'rails_helper'

RSpec.describe "Requisicoes", type: :request do
  let!(:usuario){ create(:usuario)}

  before do
    post new_usuario_session_path, params: { usuario: { email: usuario.email, password: usuario.password }}
  end

  describe "GET /index" do
    it "retorna success" do
      get requisicoes_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/requisicoes/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/requisicoes/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/requisicoes/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/requisicoes/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/requisicoes/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/requisicoes/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
