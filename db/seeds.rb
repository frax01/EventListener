# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

more_utentes = [
    {:nome => 'Francesco', :cognome => 'Martignoni',
      :data_di_nascita => '04/04/2001', :mail => 'francescomartignoni1@gmail.com', :password => 'forzaroma'},
    {:nome => 'Simone', :cognome => 'Micucci',
      :data_di_nascita => '10/03/2000', :mail => 'simonemicucci00@gmail.com', :password => 'asroma1927'},
  ]
  
  more_utentes.each do |utente|
   Utente.create(utente)
  end
