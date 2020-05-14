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
  it 'when multiple letter string' do
    scrabble = Scrabble.new('CDBAFE')
    expect(scrabble.score).to eq 14
  end
  it 'when single letter string in downcase' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq 1
  end
  it 'when double letter string in downcase' do
    scrabble = Scrabble.new('af')
    expect(scrabble.score).to eq 5
  end
  it 'when multiple letter string in downcase' do
    scrabble = Scrabble.new('afe')
    expect(scrabble.score).to eq 6
  end
  it 'when double letter string one downcase & one in upcase' do
    scrabble = Scrabble.new('Ce')
    expect(scrabble.score).to eq 4
  end

  it 'when multiple letter string in upcase & downcase' do
    scrabble = Scrabble.new('BafAe')
    expect(scrabble.score).to eq 10
  end
  it 'when empty string ' do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq 0
  end
end
