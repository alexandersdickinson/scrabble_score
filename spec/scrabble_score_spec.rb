require('scrabble_score')
require('rspec')

describe('String#scrabble_score') do
  it('returns the correct score for a single letter') do
    expect('g'.scrabble_score()).to(eq(2))
  end
end