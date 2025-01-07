require 'rails_helper'

RSpec.describe "Requisicoes", type: :request do
  let!(:usuario){ create(:usuario)}
  let(:paciente){ create(:paciente)}
  let(:requisicao) { create(:requisicao, paciente: paciente) }
  let(:informacao_clinica) { create(:informacao_clinica, requisicao_id: requisicao.id)}
  let(:amostra) { create_list(:amostra, 1, requisicao_id: requisicao.id)}

  before do
    post new_usuario_session_path, params: { usuario: { email: usuario.email, password: usuario.password }}
  end

  describe "GET /index" do
    it "retornar successo" do
      get requisicoes_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "retornar sucesso" do
      requisicao
      informacao_clinica
      amostra
      get requisicao_path(requisicao.id)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "retorno " do
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
