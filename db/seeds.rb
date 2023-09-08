# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts ""
puts "Seeding the database..."

  more_users = [
    {
      email: 'listener@example.com',
      password: 'Password1!',
      provider: 'spotify',
      uid: 'Frax01',
      status: 'Listener',
      name: 'Francesco Grelli',
      image: nil,
      artist0: nil,
      artist1: nil,
      artist2: nil,
      artist3: nil,
      artist4: nil,
      image0: nil,
      image1: nil,
      image2: nil,
      image3: nil,
      image4: nil,
      is_artist: false #id=1
    },
    {
      email: 'tedua@example.com',
      password: 'Password1!',
      provider: 'spotify',
      uid: 'Tedua',
      status: 'Fan',
      name: 'Mario',
      artist0: 'Ligabue',
      artist1: 'Selena Gomez',
      artist2: 'Drake',
      artist3: 'Beyoncé',
      artist4: 'Kendrick Lamar',
      is_artist: true #id=2
    },
    {
      email: 'BLANCO@example.com',
      password: 'Password1!',
      provider: 'spotify',
      uid: 'BLANCO',
      status: 'Fan',
      name: 'Giovanni',
      artist0: 'Ligabue',
      artist1: 'Selena Gomez',
      artist2: 'Drake',
      artist3: 'Dua Lipa',
      artist4: 'Kendrick Lamar',
      is_artist: true #id=3
    }
  ]
  
  puts ""
  puts "Utenti:"
  more_users.each do |user|
    User.create!(user)
    puts "User: #{user}"
    puts ""
  end

  more_radunos = [
    {
      nome_darte_organizzatore: 'Tedua',
      descrizione: 'video nuovo album',
      data: '20/07/2023',
      orario: '20:30',
      luogo: 'Via del Corso, Roma',
      email: 'tedua@example.com',
      user_id: 2
    },
    {
      nome_darte_organizzatore: 'BLANCO',
      descrizione: 'video nuovo album',
      data: '30/07/2023',
      orario: '20:30',
      luogo: 'Via del Corso, Roma',
      email: 'BLANCO@example.com',
      user_id: 3
    }
  ]

  puts "Raduni:"
  more_radunos.each do |raduno|
    Raduno.create!(raduno)
    puts "Raduno: #{raduno}"
    puts ""
  end