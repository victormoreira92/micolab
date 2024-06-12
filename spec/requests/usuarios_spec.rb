require 'rails_helper'

RSpec.describe "Usuarios", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/usuarios/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/usuarios/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/usuarios/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /toogle_desativacao" do
    it "returns http success" do
      get "/usuarios/toogle_desativacao"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/usuarios/show"
      expect(response).to have_http_status(:success)
    end
  end

end
