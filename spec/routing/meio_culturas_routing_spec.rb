require "rails_helper"

RSpec.describe MeioCulturasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/meios_culturas").to route_to("meios_culturas#index")
    end

    it "routes to #new" do
      expect(get: "/meios_culturas/new").to route_to("meios_culturas#new")
    end

    it "routes to #show" do
      expect(get: "/meios_culturas/1").to route_to("meios_culturas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/meios_culturas/1/edit").to route_to("meios_culturas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/meios_culturas").to route_to("meios_culturas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/meios_culturas/1").to route_to("meios_culturas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/meios_culturas/1").to route_to("meios_culturas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/meios_culturas/1").to route_to("meios_culturas#destroy", id: "1")
    end
  end
end
