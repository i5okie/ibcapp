require "spec_helper"

describe VendorItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/vendor_items").should route_to("vendor_items#index")
    end

    it "routes to #new" do
      get("/vendor_items/new").should route_to("vendor_items#new")
    end

    it "routes to #show" do
      get("/vendor_items/1").should route_to("vendor_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vendor_items/1/edit").should route_to("vendor_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vendor_items").should route_to("vendor_items#create")
    end

    it "routes to #update" do
      put("/vendor_items/1").should route_to("vendor_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vendor_items/1").should route_to("vendor_items#destroy", :id => "1")
    end

  end
end
