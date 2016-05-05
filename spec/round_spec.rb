require 'spec_helper'

describe 'Round' do
  subject { NRL::Round }

  describe '#all' do
    let(:rounds) { subject.all }

    it 'returns an array of rounds' do
      expect(rounds).to be_a(Array)
      rounds.each do |round|
        expect(round).to be_a(NRL::Round)
        round.matches.each { |match| expect(match).to be_a(NRL::Match) }
      end
    end
  end
end
