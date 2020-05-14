require 'scrabble'
describe 'scrabble score' do
  it 'when single letter A' do
    scrabble = Scrabble.new('A')
    expect(scrabble.score).to eq 1
  end
  it 'when single letter B' do
    scrabble = Scrabble.new('B')
    expect(scrabble.score).to eq 3
  end
  it 'when single letter D' do
    scrabble = Scrabble.new('D')
    expect(scrabble.score).to eq 2
  end
  it 'when double letter D' do
    scrabble = Scrabble.new('AB')
    expect(scrabble.score).to eq 4
  end
end
