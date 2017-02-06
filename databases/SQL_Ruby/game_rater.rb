#Build a database to store game reviews using the example given in the kittenexplosion
#build methods to add, edit, and delete the ratings
#build a understandable user interface. 



require 'sqlite3'

db = SQLite3::Database.new("ratings.db")

create_table_cmd = <<-ratings
	CREATE TABLE IF NOT EXISTS ratings(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		stars INT,
		)
ratings

db.execute(create_table_cmd)

def add_rating(db,name,stars)
	db.execute("INSERT INTO ratings (name, stars) VALUES (?, ?)", [name, stars])	
end

def edit_rating(db, stars, id)
	db.execute("UPDATE ratings SET stars=? WHERE id=?", [stars,id])
end

def delete_rating(db, id)
	db.execute("DELETE FROM ratings WHERE id=?", [id])
end

