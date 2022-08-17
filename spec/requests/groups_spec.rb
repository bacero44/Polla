require 'rails_helper'

RSpec.describe "Groups", type: :request do
  describe "GET /index" do
    it "returns http success" do
      t = create :tournament
      s = create :stage, tournament_id: t.id
      get "/tournaments/#{t.id}/stages/#{s.id}/groups"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      t = create :tournament
      s = create :stage, tournament_id: t.id
      g = create :group, stage_id: s.id
      get "/tournaments/#{t.id}/stages/#{s.id}/groups/#{g.id}"
      expect(response).to have_http_status(:success)
    end
  end

end
