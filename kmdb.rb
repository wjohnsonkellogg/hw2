# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Actor.destroy_all
Character.destroy_all
Movie.destroy_all
Studio.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

#generated tables, input table columns, and then migrated

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

studio_new = Studio.new
studio_new["name"] = "Warner Bros."
studio_new.save

movie1 = Movie.new
movie1["title"] = "Batman Begins"
movie1["year_released"] = "2005"
movie1["rated"] = "PG-13"
movie1["studio_id"] = studio_new["id"]
movie1.save

movie2 = Movie.new
movie2["title"] = "The Dark Knight"
movie2["year_released"] = "2008"
movie2["rated"] = "PG-13"
movie2["studio_id"] = studio_new["id"]
movie2.save

movie3 = Movie.new
movie3["title"] = "The Dark Knight Rises"
movie3["year_released"] = "2012"
movie3["rated"] = "PG-13"
movie3["studio_id"] = studio_new["id"]
movie3.save

actor1 = Actor.new
actor1["name"] = "Christian Bale"
actor1.save

actor2 = Actor.new
actor2["name"] = "Michael Caine"
actor2.save

actor3 = Actor.new
actor3["name"] = "Liam Neeson"
actor3.save

actor4 = Actor.new
actor4["name"] = "Katie Holmes"
actor4.save

actor5 = Actor.new
actor5["name"] = "Gary Oldman"
actor5.save

actor6 = Actor.new
actor6["name"] = "Heath Ledger"
actor6.save

actor7 = Actor.new
actor7["name"] = "Aaron Eckhart"
actor7.save

actor8 = Actor.new
actor8["name"] = "Maggie Gyllenhaal"
actor8.save

actor9 = Actor.new
actor9["name"] = "Tom Hardy"
actor9.save

actor10 = Actor.new
actor10["name"] = "Joseph Gordon-Levitt"
actor10.save

actor11 = Actor.new
actor11["name"] = "Anne Hathaway"
actor11.save

character1 = Character.new
character1["movie_id"] = movie1["id"]
character1["actor_id"] = actor1["id"]
character1["character_name"] = "Bruce Wayne"
character1.save

character2 = Character.new
character2["movie_id"] = movie1["id"]
character2["actor_id"] = actor2["id"]
character2["character_name"] = "Alfred"
character2.save

character3 = Character.new
character3["movie_id"] = movie1["id"]
character3["actor_id"] = actor3["id"]
character3["character_name"] = "Ra's Al Ghul"
character3.save

character4 = Character.new
character4["movie_id"] = movie1["id"]
character4["actor_id"] = actor4["id"]
character4["character_name"] = "Rachel Dawes"
character4.save

character5 = Character.new
character5["movie_id"] = movie1["id"]
character5["actor_id"] = actor5["id"]
character5["character_name"] = "Commissioner Gordon"
character5.save

character6 = Character.new
character6["movie_id"] = movie2["id"]
character6["actor_id"] = actor1["id"]
character6["character_name"] = "Bruce Wayne"
character6.save

character7 = Character.new
character7["movie_id"] = movie2["id"]
character7["actor_id"] = actor6["id"]
character7["character_name"] = "Joker"
character7.save

character8 = Character.new
character8["movie_id"] = movie2["id"]
character8["actor_id"] = actor7["id"]
character8["character_name"] = "Harvey Dent"
character8.save

character9 = Character.new
character9["movie_id"] = movie2["id"]
character9["actor_id"] = actor2["id"]
character9["character_name"] = "Alfred"
character9.save

character10 = Character.new
character10["movie_id"] = movie2["id"]
character10["actor_id"] = actor10["id"]
character10["character_name"] = "Rachel Dawes"
character10.save

character11 = Character.new
character11["movie_id"] = movie3["id"]
character11["actor_id"] = actor1["id"]
character11["character_name"] = "Bruce Wayne"
character11.save

character12 = Character.new
character12["movie_id"] = movie3["id"]
character12["actor_id"] = actor5["id"]
character12["character_name"] = "Commissioner Gordon"
character12.save

character13 = Character.new
character13["movie_id"] = movie3["id"]
character13["actor_id"] = actor9["id"]
character13["character_name"] = "Bane"
character13.save

character14 = Character.new
character14["movie_id"] = movie3["id"]
character14["actor_id"] = actor10["id"]
character14["character_name"] = "John Blake"
character14.save

character15 = Character.new
character15["movie_id"] = movie3["id"]
character15["actor_id"] = actor11["id"]
character15["character_name"] = "Selina Kyle"
character15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!


movies = Movie.all
for movie in movies
    studio = Studio.find_by({ "id" => movie["studio_id"]})
    puts "#{movie["title"]} #{movie["year_released"]} #{movie["rated"]} #{studio["name"]}"
end

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

characters = Character.all
for character in characters
    movie = Movie.find_by({ "id" => character["movie_id"]})
    actor = Actor.find_by({ "id" => character["actor_id"]})
    puts "#{movie["title"]} #{actor["name"]} #{character["character_name"]}"
end

