require 'rails_helper'

RSpec.describe "/unidades_saudes", type: :request do
  let!(:usuario_valido) { create(:usuario) }
  let!(:unidade_saude) { create(:unidade_saude) }
  let!(:unidade_saude_valido) { build(:unidade_saude) }

  before do
    login_as(usuario_valido, scope: :usuario)
  end

  describe 'GET /index' do
    it 'retorna sucesso' do
      get unidades_saudes_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      login_as usuario, scope: :usuario
      get unidade_saude_url(unidade_saude)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_unidade_saude_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      unidade_saude = UnidadeSaude.create! valid_attributes
      get edit_unidade_saude_url(unidade_saude)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new UnidadeSaude" do
        expect {
          post unidade_saudes_url, params: { unidade_saude: valid_attributes }
        }.to change(UnidadeSaude, :count).by(1)
      end

      it "redirects to the created unidade_saude" do
        post unidade_saudes_url, params: { unidade_saude: valid_attributes }
        expect(response).to redirect_to(unidade_saude_url(UnidadeSaude.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new UnidadeSaude" do
        expect {
          post unidade_saudes_url, params: { unidade_saude: invalid_attributes }
        }.to change(UnidadeSaude, :count).by(0)
      end


      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post unidade_saudes_url, params: { unidade_saude: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested unidade_saude" do
        unidade_saude = UnidadeSaude.create! valid_attributes
        patch unidade_saude_url(unidade_saude), params: { unidade_saude: new_attributes }
        unidade_saude.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the unidade_saude" do
        unidade_saude = UnidadeSaude.create! valid_attributes
        patch unidade_saude_url(unidade_saude), params: { unidade_saude: new_attributes }
        unidade_saude.reload
        expect(response).to redirect_to(unidade_saude_url(unidade_saude))
      end
    end

    context "with invalid parameters" do

      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        unidade_saude = UnidadeSaude.create! valid_attributes
        patch unidade_saude_url(unidade_saude), params: { unidade_saude: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end

    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested unidade_saude" do
      unidade_saude = UnidadeSaude.create! valid_attributes
      expect {
        delete unidade_saude_url(unidade_saude)
      }.to change(UnidadeSaude, :count).by(-1)
    end

    it "redirects to the unidades_saude list" do
      unidade_saude = UnidadeSaude.create! valid_attributes
      delete unidade_saude_url(unidade_saude)
      expect(response).to redirect_to(unidade_saudes_url)
    end
  end
end
