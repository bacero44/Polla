require 'rails_helper'

RSpec.describe Match, type: :model do
  describe '#Validations' do
    let(:team1) { create :participating_team }
    let(:team2) { create :participating_team }
    
    let(:stage) { create :stage }
    let(:group) { create :group }
    let(:valid_team) { build :match, stage_id: stage.id, group_id: group.id, home_team_id: team1.id, away_team_id: team2.id }
    context 'Presence of attributes' do
      it 'should be valid (All attributes)' do
        expect(valid_team).to be_valid
      end
      it 'should be valid (without group)' do
        t = valid_team
        t.group_id = nil
        expect(t).to be_valid
      end
    
      it 'should be not valid' do
        t = valid_team
        t.home_team_id = nil
        expect(t).not_to be_valid
        t = valid_team
        t.away_team_id = nil
        expect(t).not_to be_valid
        t = valid_team
        t.stage_id = nil
        expect(t).not_to be_valid
      end

      it 'scores have to be nil after create' do
        t = create :match, stage_id: stage.id, group_id: group.id, home_team_id: team1.id, away_team_id: team2.id, score_team_1: 1, score_team_2: 0
        expect(t.score_team_1).to eq(nil)
        expect(t.score_team_2).to eq(nil)
      end
    end
  end
  
end
