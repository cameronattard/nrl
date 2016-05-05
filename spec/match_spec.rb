require 'spec_helper'

describe 'Match' do
  subject { NRL::Match }

  describe '#all' do
    let(:matches) { subject.all }

    it 'returns an array of matches' do
      expect(matches).to be_a(Array)
      matches.each do |match|
        expect(match).to be_a(NRL::Match)
      end
    end
  end
end
