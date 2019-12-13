require_relative('../db/sql_runner')

class Members

  attr_accessor :first_name, :last_name, :date_of_birth, :address, :post_code
  attr_reader :id

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @date_of_birth = options['date_of_birth']
    @address = options['address']
    @post_code = options['post_code']
  end
