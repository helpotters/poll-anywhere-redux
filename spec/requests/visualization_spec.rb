require 'rails_helper'

RSpec.describe "Visualizations", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/visualization/show"
      expect(response).to have_http_status(:success)
    end
  end

end
