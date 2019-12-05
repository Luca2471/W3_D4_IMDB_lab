require_relative('models/casting')
require_relative('models/star')
require_relative('models/movie')

require( 'pry' )

Star.delete_all
Movie.delete_all


star1 = Star.new({'first_name' => 'Frank',
  'last_name' => 'Chicken'
  })
  star1.save

movie1 = Movie.new({'title' => 'KFC the Colonel stikes back',
  'genre' => 'Documentary'
  })
movie1.save


binding.pry
nil
