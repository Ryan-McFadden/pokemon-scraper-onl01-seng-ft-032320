class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(hash)
    hash.each do |key, value|
      self.send(("#{key}="), value)
    end
    self.id ||= nil
  end
  
  def self.save(name, type, db)
    
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?, ?)
      SQL
      
    db.execute(sql, name, type)
  end
  
  def self.find(id, db)
    
  end
  
end
