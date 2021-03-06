# require gems
require 'sinatra'
require 'sqlite3'
require 'faker'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("floofers.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS floofers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)

# # show students on the home page
# get '/' do
#   @students = db.execute("SELECT * FROM students")
#   erb :home
# end

# get '/students/new' do
#   erb :new_student
# end


# create new students via
# a form
# post '/students' do
#   db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
#   redirect '/'
# end

# Given there was a mention of staff members bringing pets on campus.. 
def woofer(db, name, age)
  db.execute("INSERT INTO floofers (name, breed) VALUES (?, ?)", [name, breed])
end

5.times do
  woofer(db, Faker::Name.name, "THE FLUFFIEST KIND")
end

get '/' do
	@doggos = db.execute("SELECT * FROM floofers")
	erb :home
end

get '/floofers/new' do
	erb :pet
end

post '/floofers' do
	db.execute("INSERT INTO floofers (name, breed) VALUES (?,?)", [params['name'], params['breed'].to_i])
	redirect '/'
end