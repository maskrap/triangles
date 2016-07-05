require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/')  do
  erb(:index)
end

get('/triangle')  do
  @side_one = params.fetch('side_one')
  @side_two = params.fetch('side_two')
  @side_three = params.fetch('side_three')
  @result = Triangle.new(@side_one, @side_two, @side_three).anal
  erb(:result)
end
