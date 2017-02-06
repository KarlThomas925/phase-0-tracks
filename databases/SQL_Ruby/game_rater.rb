#Build a database to store game reviews using the example given in the kittenexplosion
#build methods to add, edit, and delete the ratings
#build a understandable user interface. 



require 'sqlite3'

db = SQLite3::Database.new("ratings.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS ratings(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		stars INT
		)
SQL

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

puts "Welcome to your Game review database."

puts "What would you like to do with the database? Type: 'add', 'edit', or 'delete'..."
action = gets.strip

if(action == "add")
	puts "What is the games name?"
	name = gets.chomp
	puts "And how many stars would you give this game?"
	stars = gets.chomp
	add_rating(db, name, stars)
elsif(action == 'edit')
	puts 'Input the ID # of the rating you would like to edit'
	id = gets.chomp
	puts 'What is the updated rating?'
	new_rating = gets.chomp
	edit_rating(db, new_rating,id)
elsif(action == 'delete')
	puts 'Input the ID # of the rating you would like to delete'
	id = gets.chomp
	delete_rating(db,id)
else
	puts "That was not avalid input"
end


# ratings = db.execute("SELECT * FROM ratings")
# p ratings
