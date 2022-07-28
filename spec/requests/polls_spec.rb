require 'rails_helper'

RSpec.describe "Polls", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/polls/new"
      expect(response).to have_http_status(:success)
    end
  end

end
