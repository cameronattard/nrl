require 'spec_helper'

describe 'Team' do
  subject { NRL::Team }
  
  describe '#all' do
    let(:teams) { subject.all }
    
    it 'returns an array of teams' do
      expect(teams).to be_a(Array)
      teams.each { |team| expect(team).to be_a(NRL::Team) }
    end
  end
end