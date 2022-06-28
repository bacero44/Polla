require 'rails_helper'

RSpec.describe Group, type: :model do
  describe '#Validations' do
    context 'Presence of attributes' do
      it 'should be valid' do
        g = build :group
        expect(g).to be_valid
      end

      it 'should validate presence of tournamente' do
        g = build :group, stage_id: nil
        expect(g).not_to be_valid
      end

      it 'should validate presence of name' do
        g = build :group, name: nil
        expect(g).not_to be_valid
      end
    end
  end
end
