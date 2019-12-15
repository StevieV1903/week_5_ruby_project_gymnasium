require_relative('../db/sql_runner')

class Member

attr_reader :id
attr_accessor :first_name, :last_name, :date_of_birth, :address, :post_code


  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @date_of_birth = options['date_of_birth']
    @address = options['address']
    @post_code = options['post_code']
  end

  def save()
    sql = "INSERT INTO members
    (first_name, last_name, date_of_birth, address, post_code)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@first_name, @last_name, @date_of_birth, @address, @post_code]
    result = SqlRunner.run( sql, values )
    id = result.first()['id']
    @id = id.to_i
  end

  def self.delete_all()
    sql = "DELETE FROM members"
    SqlRunner.run( sql )
  end

  def self.all()
    sql = "SELECT * FROM members"
    member_data = SqlRunner.run(sql)
    members = map_items(member_data)
    return members
  end

  def delete()
      sql = "DELETE from members
      WHERE id = $1"
      values = [@id]
      SqlRunner.run( sql, values )
    end

def self.map_items(member_data)
  return member_data.map { |member| Member.new(member)}
end

def update()
    sql = "UPDATE members SET
    (
      first_name, last_name, date_of_birth, address, post_code
      ) =
    ($1, $2, $3, $4, $5) WHERE
    id = $6"
    values = [@first_name, @last_name, @date_of_birth, @address, @post_code, @id]
    SqlRunner.run( sql, values )
  end




end
