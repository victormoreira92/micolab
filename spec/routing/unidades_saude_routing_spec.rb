require "rails_helper"

RSpec.describe UnidadesSaudeController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/unidades_saude").to route_to("unidade_saudes#index")
    end

    it "routes to #new" do
      expect(get: "/unidades_saude/new").to route_to("unidade_saudes#new")
    end

    it "routes to #show" do
      expect(get: "/unidades_saude/1").to route_to("unidade_saudes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/unidades_saude/1/edit").to route_to("unidade_saudes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/unidades_saude").to route_to("unidade_saudes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/unidades_saude/1").to route_to("unidade_saudes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/unidades_saude/1").to route_to("unidade_saudes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/unidades_saude/1").to route_to("unidade_saudes#destroy", id: "1")
    end
  end
end
