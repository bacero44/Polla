require 'rails_helper'

RSpec.describe "Matches", type: :request do
  let(:t) { create :tournament }
  let(:s) { create :stage, tournament_id: t.id }
  let(:g) { create :group, stage_id: s.id }
  let(:m) { create :match, stage_id: s.id }
  let(:m2) { create :match, stage_id: s.id, group_id: g.id }
  describe "GET /index" do
    it 'returns http success' do
      get "/tournaments/#{t.id}/stages/#{s.id}/groups/#{g.id}/matches"
      expect(response).to have_http_status(:success)
    end

    it 'returns http success' do
      get "/tournaments/#{t.id}/stages/#{s.id}/matches"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it 'returns http success' do
      get "/tournaments/#{t.id}/stages/#{s.id}/groups/#{g.id}/matches/#{m2.id}"
      expect(response).to have_http_status(:success)
    end
    it 'returns http success' do
      get "/tournaments/#{t.id}/stages/#{s.id}/matches/#{m.id}"
      expect(response).to have_http_status(:success)
    end
  end

end
