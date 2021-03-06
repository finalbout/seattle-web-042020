class Artist
  attr_accessor :name, :id
  #id and name) -> columns
  # @@all = [ ]
  def initialize(artist)
    # binding.pry
    @name = artist["name"]
    @id = artist["id"]
    # @@all << self
  end
#***********************************************************************************************#
# Delete -> drop table
def self.delete_table
  artist = CONN.execute("DROP TABLE artists")
end

def insert(name)
  CONN.execute("INSERT INTO artits(name) VALUES(?)", name)
end

def self.all
  artists = CONN.execute("SELECT * FROM artists")
  artists.each do |artist|
    Artist.new(artist)
  end
end 



def self.update_name(id, old_name, new_name)
  artist = CONN.execute("UPDATE artists SET name = ? WHERE name = old_name AND id = ?", new_name, old_name, id)
end

def update_name(old_name, new_name)
  artist = CONN.execute("UPDATE artists SET name = ? WHERE name = old_name AND id = ?", new_name, old_name, id)
end

def self.create_table(name)
  artist = CONN.execute("CREATE TABLE artists COLUMN(id INTEGER PRIMARY KEY, name TEXT)")
end

def self.delete_column_by_name(name)
  artist = CONN.execute("DELETE FROM artists WHERE name = ? && id = ?",name, id)
end

def delete
  artist = CONN.execute("DELETE FROM artists WHERE name = ? && id = ?",name, id)
end
#***********************************************************************************************#

def self.create_table(name)
  artist = CONN.execute("CREATE TABLE artists COLUMN(id INTEGER PRIMARY KEY, name TEXT)")
end

def self.find_by_name(name)
  artist = CONN.execute("SELECT * FROM artists WHERE name = ?", name)
end

def self.find_by_id(id)
  artist = CONN.execute("SELECT * FROM artists WHERE id = ?", id)
end

def self.add_column(column_name, column_type)
  artist = CONN.execute("ALTER TABLE artists ADD COLUMN ? ?", column_name, column_type)
end

def self.add_column(column_name, column_type)
  artist = CONN.execute("ALTER TABLE artists ADD COLUMN ? ?", column_name, column_type)
end

def self.update_name(id, old_name, new_name)
  artist = CONN.execute("UPDATE artists SET name = ? WHERE name = old_name AND id = ?", new_name, old_name, id)
end
#***********************************************************************************************#
end