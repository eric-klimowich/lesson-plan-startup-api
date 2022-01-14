require 'rails_helper'

RSpec.describe "Lessons", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/lessons/index"
      expect(response).to have_http_status(:success)
    end
  end

end
