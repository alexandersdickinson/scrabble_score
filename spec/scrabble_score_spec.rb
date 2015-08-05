require('scrabble_score')
require('rspec')

describe('String#scrabble_score') do
  it('returns the correct score for a single letter') do
    expect('g'.scrabble_score()).to(eq(2))
  end
  
  it('returns the correct score for an entire word') do
    expect('ghost'.scrabble_score()).to(eq(9))
  end
end