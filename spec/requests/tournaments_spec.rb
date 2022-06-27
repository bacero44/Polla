require 'rails_helper'

RSpec.describe "Tournaments", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tournaments"
      expect(response).to have_http_status(:success)
    end

    it 'returns a proper list' do
      t = create :tournament
      get "/tournaments"
      expect(json_data.length).to eq(1)
      expected = json_data.first
      expect(expected[:id]).to eq(t.id.to_s)
      expect(expected[:type]).to eq('tournament')
      expect(expected[:attributes]).to eq(
        name: t.name
      )
    end
  end

  describe "GET /show" do
    it "returns http success" do
      t = create :tournament
      get "/tournaments/#{t.id}"
      expect(response).to have_http_status(:success)
    end
  end
  


end
