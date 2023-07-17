# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding the database..."

more_users = [
  { 
    email: 'user1@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Taylor Swift',
    status: 'Fan',
    name: 'Taylor',
    artist0: 'Ligabue',
    artist1: 'Ariana Grande',
    artist2: 'Dua Lipa',
    artist3: 'Post Malone',
    artist4: 'Kendrick Lamar',
    is_artist: true #1
  },
  {
    email: 'user2@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Adele',
    status: 'Fan',
    name: 'Jane Doe',
    artist0: 'Jovanotti',
    artist1: 'Ariana Grande',
    artist2: 'Laura Pausini',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true #2
  },
  {
    email: 'user3@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Emily_01',
    status: 'Listener',
    name: 'Emily Johnson',
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
    is_artist: false #3
  },
  {
    email: 'user4@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Bruno Mars',
    status: 'Fan',
    name: 'Alex Johnson',
    artist0: 'Selena Gomez',
    artist1: 'Post Malone',
    artist2: 'Drake',
    artist3: 'Laura Pausini',
    artist4: 'Kendrick Lamar',
    is_artist: true #4
  },
  {
    email: 'user5@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Justin Bieber',
    status: 'Fan',
    name: 'Sophia Anderson',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true #5
  },
  {
    email: 'user6@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Rihanna',
    status: 'Fan',
    name: 'Michael Brown',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Post Malone',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true #6
  },
  {
    email: 'user7@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Lady Gaga',
    status: 'Fan',
    name: 'Emma Wilson',
    artist0: 'Ed Sheeran',
    artist1: 'Jovanotti',
    artist2: 'Vasco Rossi',
    artist3: 'Beyoncé',
    artist4: 'Laura Pausini',
    is_artist: true #7
  },
  {
    email: 'user9@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Selena Gomez',
    status: 'Fan',
    name: 'Sophie Roberts',
    artist0: 'Ligabue',
    artist1: 'Taylor Swift',
    artist2: 'Drake',
    artist3: 'Vasco Rossi',
    artist4: 'Kendrick Lamar',
    is_artist: true #8
  },
  {
    email: 'user24@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Laura Pausini',
    status: 'Fan',
    name: 'laura',
    artist0: 'Vasco Rossi',
    artist1: 'Bruno Mars',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Dua Lipa',
    is_artist: true #9
  },
  {
    email: 'user12@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Billie Eilish',
    status: 'Fan',
    name: 'Olivia Davis',
    artist0: 'Ligabue',
    artist1: 'Dua Lipa',
    artist2: 'Jovanotti',
    artist3: 'Laura Pausini',
    artist4: 'Kendrick Lamar',
    is_artist: true #10
  },
  {
    email: 'user23@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Jovanotti',
    status: 'Fan',
    name: 'Lorenzo',
    artist0: 'Ed Sheeran',
    artist1: 'Vasco Rossi',
    artist2: 'Dua Lipa',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true #11
  },
  {
    email: 'user16@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Post Malone',
    status: 'Fan',
    name: 'Sophia Martinez',
    artist0: 'Ed Sheeran',
    artist1: 'Adele',
    artist2: 'Jovanotti',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true #12
  },
  {
    email: 'user17@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Dua Lipa',
    status: 'Fan',
    name: 'Isabella Taylor',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Bruno Mars',
    artist3: 'Jovanotti',
    artist4: 'Kendrick Lamar',
    is_artist: true #13
  },
  {
    email: 'user22@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Vasco Rossi',
    status: 'Fan',
    name: 'Vasco',
    artist0: 'Jovanotti',
    artist1: 'Ariana Grande',
    artist2: 'Lady Gaga',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true #14
  },
  {
    email: 'user21@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Ligabue',
    status: 'Fan',
    name: 'Marco Rossi',
    artist0: 'Laura Pausini',
    artist1: 'Vasco Rossi',
    artist2: 'Bruno Mars',
    artist3: 'Taylor Swift',
    artist4: 'Kendrick Lamar',
    is_artist: true #15
  },
  {
    email: 'user25@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Francesco',
    status: 'Fan',
    name: 'Francesco',
    artist0: 'Post Malone',
    artist1: 'Ariana Grande',
    artist2: 'Bruno Mars',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false #16
  },
  {
    email: 'user26@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'John',
    status: 'Fan',
    name: 'John',
    artist0: 'Bruno Mars',
    artist1: 'Ariana Grande',
    artist2: 'Lady Gaga',
    artist3: 'Laura Pausini',
    artist4: 'Kendrick Lamar',
    is_artist: false #17
  },
  {
    email: 'user27@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Leonardo',
    status: 'Fan',
    name: 'Leonardo',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Selena Gomez',
    artist4: 'Laura Pausini',
    is_artist: false #18
  },
  {
    email: 'user28@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Giulia',
    status: 'Fan',
    name: 'Giulia',
    artist0: 'Ed Sheeran',
    artist1: 'Adele',
    artist2: 'Drake',
    artist3: 'Post Malone',
    artist4: 'Dua Lipa',
    is_artist: false #19
  },
  {
    email: 'user29@example.com',
    password: 'Password1!',
    provider: 'spotify',
    uid: 'Maria',
    status: 'Fan',
    name: 'Maria',
    artist0: 'Ligabue',
    artist1: 'Selena Gomez',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false #20
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
    is_artist: true #21
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
    is_artist: true #22
  }
]
  
  puts "Utenti:"
  more_users.each do |user|
    User.create!(user)
    #User.create(user)
    puts "User: #{user}"
  end

  more_radunos = [
    {
      nome_darte_organizzatore: 'Tedua',
      descrizione: 'video nuovo album',
      data: '20/07/2023',
      orario: '20:30',
      luogo: 'Via del Corso, Roma',
      email: 'tedua@example.com',
      user_id: 21
    },
    {
      nome_darte_organizzatore: 'BLANCO',
      descrizione: 'video nuovo album',
      data: '30/07/2023',
      orario: '20:30',
      luogo: 'Via del Corso, Roma',
      email: 'tedua@example.com',
      user_id: 22
    },
    {
    nome_darte_organizzatore: 'Taylor Swift',
    descrizione: 'video nuovo album',
    data: '10/08/2023',
    orario: '20:30',
    luogo: 'Via del Corso, Roma',
    email: 'user1@example.com',
    user_id: 1
  },
  {
    nome_darte_organizzatore: 'Taylor Swift',
    descrizione: 'esibizione nuovo singolo',
    data: '15/08/2023',
    orario: '19:30',
    luogo: 'Piazza di Spagna, Roma',
    email: 'user1@example.com',
    user_id: 1
  },
  {
    nome_darte_organizzatore: 'Adele',
    descrizione: 'foto con i fan',
    data: '20/07/2023',
    orario: '22:00',
    luogo: 'Via Nazionale, Roma',
    email: 'user2@example.com',
    user_id: 2
  },
  {
    nome_darte_organizzatore: 'Dua Lipa',
    descrizione: 'annuncio nuovo tour',
    data: '25/07/2023',
    orario: '21:30',
    luogo: 'Piazza Navona, Roma',
    email: 'user7@example.com',
    user_id: 13
  },
  {
    nome_darte_organizzatore: 'Taylor Swift',
    descrizione: 'video nuovo album',
    data: '05/08/2023',
    orario: '20:30',
    luogo: 'Via del Corso, Roma',
    email: 'user1@example.com',
    user_id: 1
  },
  {
    nome_darte_organizzatore: 'Bruno Mars',
    descrizione: 'esibizione nuovo singolo',
    data: '10/08/2023',
    orario: '19:30',
    luogo: 'Piazza di Spagna, Roma',
    email: 'user6@example.com',
    user_id: 4
  },
  {
    nome_darte_organizzatore: 'Lady Gaga',
    descrizione: 'foto con i fan',
    data: '15/08/2023',
    orario: '22:00',
    luogo: 'Via Nazionale, Roma',
    email: 'user7@example.com',
    user_id: 7
  },
  {
    nome_darte_organizzatore: 'Selena Gomez',
    descrizione: 'annuncio nuovo tour',
    data: '20/08/2023',
    orario: '21:30',
    luogo: 'Piazza Navona, Roma',
    email: 'user9@example.com',
    user_id: 8
  },
  {
    nome_darte_organizzatore: 'Post Malone',
    descrizione: 'video nuovo album',
    data: '25/08/2023',
    orario: '20:30',
    luogo: 'Via del Corso, Roma',
    email: 'user16@example.com',
    user_id: 12
  },
  {
    nome_darte_organizzatore: 'Dua Lipa',
    descrizione: 'esibizione nuovo singolo',
    data: '28/08/2023',
    orario: '19:30',
    luogo: 'Piazza di Spagna, Roma',
    email: 'user17@example.com',
    user_id: 13
  },
  {
    nome_darte_organizzatore: 'Ligabue',
    descrizione: 'foto con i fan',
    data: '30/08/2023',
    orario: '22:00',
    luogo: 'Via Nazionale, Roma',
    email: 'user21@example.com',
    user_id: 15
  },
  {
    nome_darte_organizzatore: 'Ligabue',
    descrizione: 'esibizione nuovo singolo',
    data: '02/09/2023',
    orario: '20:00',
    luogo: 'Piazza del Popolo, Roma',
    email: 'user21@example.com',
    user_id: 15
  },
  {
    nome_darte_organizzatore: 'Vasco Rossi',
    descrizione: 'foto con i fan',
    data: '05/09/2023',
    orario: '21:30',
    luogo: 'Via dei Fori Imperiali, Roma',
    email: 'user22@example.com',
    user_id: 14
  },
  {
    nome_darte_organizzatore: 'Jovanotti',
    descrizione: 'annuncio nuovo tour',
    data: '10/09/2023',
    orario: '19:00',
    luogo: 'Piazza Venezia, Roma',
    email: 'user23@example.com',
    user_id: 11
  },
  {
    nome_darte_organizzatore: 'Laura Pausini',
    descrizione: 'esibizione live',
    data: '15/09/2023',
    orario: '20:30',
    luogo: 'Piazza di Trevi, Roma',
    email: 'user24@example.com',
    user_id: 9
  }]

  puts "Raduni:"
  more_radunos.each do |raduno|
    #Raduno.create(raduno)
    Raduno.create!(raduno)
    puts "Raduno: #{raduno}"
  end

