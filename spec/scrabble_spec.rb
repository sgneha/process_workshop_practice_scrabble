require 'scrabble'
describe 'scrabble score' do
  scrabble = Scrabble.new('A')
  it 'when single letter' do
    expect(scrabble.score).to eq 1
  end
end
