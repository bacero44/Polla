require 'rails_helper'

RSpec.describe "Teams", type: :request do
  let(:tournament) { create :tournament }
  let(:team) { create :team }
  describe 'GET /index' do
    it 'returns http success' do
      get "/tournaments/#{tournament.id}/teams"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get "/tournaments/#{tournament.id}/teams/#{team.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
