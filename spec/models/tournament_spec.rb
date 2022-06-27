require 'rails_helper'

RSpec.describe Tournament, type: :model do
  describe "#Validations" do
    context "Presence of attributes" do
      it "should be valid" do
        t = build :tournament
        expect(t).to be_valid
      end

      it "should be not valid" do
        t = build :tournament, name: nil
        expect(t).not_to be_valid
      end
    end
  end
end
