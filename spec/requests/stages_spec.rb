require 'rails_helper'

RSpec.describe "Stages", type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      t = create :tournament
      create :stage, tournament_id: t.id
      get "/tournaments/#{t.id}/stages"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      t = create :tournament
      s = create :stage, tournament_id: t.id
      get "/tournaments/#{t.id}/stages/#{s.id}"
      expect(response).to have_http_status(:success)
    end
  end

end
