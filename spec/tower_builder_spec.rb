require 'tower_builder'

RSpec.describe TowerBuilder do
  subject { TowerBuilder.build(n_floors) }

  let(:n_floors) { 1 }

  describe '.build' do
    let(:single_storey_tower) { ['*'] }

    it 'builds a center-aligned tower with a given number of floors' do
      expect(subject).to eql(single_storey_tower)
    end

    context 'two floors' do
      let(:n_floors) { 2 }
      let(:two_storey_tower) { [' * ', '***'] }

      it { is_expected.to eql(two_storey_tower) }
    end

    context 'three floors' do
      let(:n_floors) { 3 }
      let(:three_storey_tower) { ['  *  ', ' *** ', '*****'] }

      it { is_expected.to eql(three_storey_tower) }
    end
  end
end
