require 'spec_helper'

describe 'Base' do
  subject { NRL::Base }
  
  describe '#connection' do
    let(:connection) { subject.connection }
    
    it 'returns a connection with correct config' do
      expect(connection).to be_a(Faraday::Connection)
      expect(connection.url_prefix.to_s).to eq(NRL::BASE_URL)
    end
  end
end