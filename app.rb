require('sinatra')
require('sinatra/reloader')
require('./lib/replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/find') do
  @argument1 = params.fetch('findWord')
  @argument2 = params.fetch('replaceWord')
  @result = params.fetch('userInput').find_and_replace(@argument1, @argument2)
  erb(:find)
end
