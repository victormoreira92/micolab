require 'rails_helper'

RSpec.describe "Usuarios", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/usuario/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/usuario/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/usuario/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /toogle_desativacao" do
    it "returns http success" do
      get "/usuario/toogle_desativacao"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/usuario/show"
      expect(response).to have_http_status(:success)
    end
  end

end
