#Build a database to store game reviews using the example given in the kittenexplosion
#build methods to add, edit, and delete the ratings
#build a understandable user interface. 



require 'sqlite3'

# code to help create the database
db = SQLite3::Database.new("ratings.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS ratings(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		stars INT
		)
SQL

#Strings to order the table by. 
alphabetize_table_cmd1 = <<-SQL
	SELECT * FROM ratings 
	ORDER BY ratings.name, ratings.stars;
SQL

alphabetize_table_cmd2 = <<-SQL
	SELECT * FROM ratings 
	ORDER BY ratings.name ASC;
SQL

order_table_cmd1 = <<-SQL
	SELECT * FROM ratings
	ORDER BY ratings.stars DESC;
SQL

order_table_cmd2 = <<-SQL
	SELECT * FROM ratings
	ORDER BY ratings.stars ASC;
SQL

#creating the database and methods to change it
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

#this will determine when the loop ends. 
inputloopbreak = false

puts "Welcome to your Game review database."

while inputloopbreak == false do

	puts "What would you like to do with the database? Type: add, edit, or delete:"
	puts "Press enter to cease entries"
	action = gets.strip

	if(action.downcase == "add")
		puts "What is the games name?"
		name = gets.chomp
		puts "And how many stars would you give this game?"
		stars = gets.chomp
		add_rating(db, name, stars)
	elsif(action.downcase == 'edit')
		puts 'Input the ID # of the rating you would like to edit'
		id = gets.chomp
		puts 'What is the updated rating?'
		new_rating = gets.chomp
		edit_rating(db, new_rating,id)
	elsif(action == 'delete')
		puts 'Input the ID # of the rating you would like to delete'
		id = gets.chomp
		delete_rating(db,id)
	elsif(action == "")
		inputloopbreak = true
		puts "thank you for using our database"
	else
		puts "That was not a valid input"
	end
end


# ratings = db.execute("SELECT * FROM ratings")
# p ratings
