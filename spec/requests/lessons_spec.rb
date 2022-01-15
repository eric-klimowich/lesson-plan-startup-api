require 'rails_helper'

RSpec.describe "Lessons", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/lessons/index"
      expect(response).to have_http_status(:success)
    end

    it 'returns a proper JSON' do
      lesson = create :lesson
      get '/lessons'
      body = JSON.parse(response.body, symbolize_names: true)
      expect(body).to eq(
        [{
          id: lesson.id,
          title: lesson.title,
          description: lesson.description,
          slug: lesson.slug
        }]
      )
    end
  end
end
