require 'rails_helper'

RSpec.describe Stage, type: :model do
  describe "#Validations" do
    context "Presence of attributes" do
      it "should be valid" do
        s = build :stage
        expect(s).to be_valid
      end

      it "should validate presence of tournamente" do
        s = build :stage, tournament_id: nil
        expect(s).not_to be_valid
      end

      it 'should validate presence of name' do
        s = build :stage, name: nil
        expect(s).not_to be_valid
      end
    end
  end
end
