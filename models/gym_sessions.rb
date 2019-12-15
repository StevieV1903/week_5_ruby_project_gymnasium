require_relative('../db/sql_runner')

class Session

attr_reader :id
attr_accessor :name, :type, :duration

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @type = options['type']
    @duration = options['duration']
  end

  def save()
sql = "INSERT INTO sessions
(name, type, duration)
VALUES
($1, $2, $3)
RETURNING id"
values = [@name, @type, @duration]
result = SqlRunner.run( sql, values )
id = result.first()['id']
@id = id.to_i 
  end



  # def save()
  #   sql = "INSERT INTO sessions
  #   (name, type, duration)
  #   VALUES
  #   ($1, $2, $3)
  #   RETURNING id"
  #   values = [@name, @type, @duration]
  #   result = SqlRunner.run( sql, values )
  #   id = result.first()['id']
  #   @id = id.to_i
  # end

#   # def self.delete_all()
#   #   sql = "DELETE FROM sessions"
#   #   SqlRunner.run(sql)
#   # end
#
#   # def delete()
#   #   sql = "DELETE from sessions
#   #   WHERE id = $1"
#   #   values = [@id]
#   #   SqlRunner.run( sql, values )
#   # end
#   #
#   # def update()
#   #   sql = "UPDATE sessions SET
#   #   (
#   #     name, type, duration
#   #     ) =
#   #   ($1, $2, $3) WHERE
#   #   id = $4"
#   #   values = [@name, @type, @duration, @id]
#   #   SqlRunner.run( sql, values )
#   # end
#
#
end
