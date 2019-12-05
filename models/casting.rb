require_relative("../db/sql_runner")

class Casting

attr_reader :id,
attr_accessor :movie_id, :star_id, :fee

  def initialize( options )
    @id = options['id'].to_i if options['id'].to_i
    @movie_id = options['movie_id'].to_i
    @star_id = options['star_id'].to_i
    @fee = options['fee']
  end

  def save()
    sql = "INSERT INTO castings
      (
      movie_id,
    star_id,
    fee
    )
    VALUES (
    $1, $2, $3
    )
    RETURNING id;"
    values = [@movie_id, @star_id, @fee]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
  end

end
