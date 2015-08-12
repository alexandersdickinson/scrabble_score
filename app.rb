require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')

get('/') do
  @title = 'Scrabble Score!'
  @header = 'Scrabble Score Calculator'
  erb(:form)
end

get('/score') do
  @title = 'Scrabble Score!'
  @header = 'Your Score'
  @word = params.fetch('word').scrabble_score()
  erb(:score)
end