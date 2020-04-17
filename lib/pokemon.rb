require 'pry'

class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id

  def initialize(attribute)
    @id = attribute[:id]
    @name = attribute[:name]
    @type = attribute[:type]
    @db = attribute[:db]
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES ("#{name}", "#{type}")
    SQL
    db.execute(sql)
  end

  def self.find(id, db)
    sql = <<-SQL
     SELECT *
     FROM pokemon
     WHERE id = "#{id}"
     LIMIT 1
    SQL
  row = db.execute(sql)
<<<<<<< HEAD
  attribute = {
    :id => row[0][0] ,
    :name => row [0][1],
    :type => row [0][2]
  }
  Pokemon.new(attribute)
=======
  attribute = {}
    attribute [:id] = row[0][0]
    attribute [:name] = row [0][1]
    attribute [:type] = row [0][2]
    attribute [:db] = db
  self.new(attribute)
>>>>>>> 7cfa1e7dcf4ac5dc8a3916cac15eedee6491b608
  end

end
