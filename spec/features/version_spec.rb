require "rails_helper"
require 'json'

RSpec.describe VersionController, type: :controller do
  describe "GET App Version" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
