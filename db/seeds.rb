# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


    more_users = [
  {
    email: 'user1@example.com',
    provider: 'spotify',
    uid: 'Taylor Swift',
    status: 'Fan',
    name: 'Taylor',
    artist0: 'Ligabue',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user2@example.com',
    provider: 'spotify',
    uid: 'Adele',
    status: 'Fan',
    name: 'Jane Doe',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Laura Pausini',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user3@example.com',
    provider: 'spotify',
    uid: 'Listener1',
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
    is_artist: false
  },
  {
    email: 'user4@example.com',
    provider: 'spotify',
    uid: 'Bruno Mars',
    status: 'Fan',
    name: 'Alex Johnson',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Laura Pausini',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user5@example.com',
    provider: 'spotify',
    uid: 'Justin Bieber',
    status: 'Fan',
    name: 'Sophia Anderson',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user6@example.com',
    provider: 'spotify',
    uid: 'Rihanna',
    status: 'Fan',
    name: 'Michael Brown',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user7@example.com',
    provider: 'spotify',
    uid: 'Lady Gaga',
    status: 'Fan',
    name: 'Emma Wilson',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Vasco Rossi',
    artist3: 'Beyoncé',
    artist4: 'Laura Pausini',
    is_artist: true
  },
  {
    email: 'user9@example.com',
    provider: 'spotify',
    uid: 'Selena Gomez',
    status: 'Fan',
    name: 'Sophie Roberts',
    artist0: 'Ligabue',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Vasco Rossi',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user24@example.com',
    provider: 'spotify',
    uid: 'Laura Pausini',
    status: 'Fan',
    name: 'laura',
    artist0: 'Vasco Rossi',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user12@example.com',
    provider: 'spotify',
    uid: 'Billie Eilish',
    status: 'Fan',
    name: 'Olivia Davis',
    artist0: 'Ligabue',
    artist1: 'Ariana Grande',
    artist2: 'Jovanotti',
    artist3: 'Laura Pausini',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user23@example.com',
    provider: 'spotify',
    uid: 'Jovanotti',
    status: 'Fan',
    name: 'Lorenzo',
    artist0: 'Ed Sheeran',
    artist1: 'Vasco Rossi',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user16@example.com',
    provider: 'spotify',
    uid: 'Post Malone',
    status: 'Fan',
    name: 'Sophia Martinez',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Jovanotti',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user17@example.com',
    provider: 'spotify',
    uid: 'Dua Lipa',
    status: 'Fan',
    name: 'Isabella Taylor',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Jovanotti',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user22@example.com',
    provider: 'spotify',
    uid: 'Vasco Rossi',
    status: 'Fan',
    name: 'Vasco',
    artist0: 'Jovanotti',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Ligabue',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user21@example.com',
    provider: 'spotify',
    uid: 'Ligabue',
    status: 'Fan',
    name: 'Marco Rossi',
    artist0: 'Ed Sheeran',
    artist1: 'Vasco Rossi',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: true
  },
  {
    email: 'user25@example.com',
    provider: 'spotify',
    uid: 'Francesco',
    status: 'Fan',
    name: 'Francesco',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false
  },
  {
    email: 'user26@example.com',
    provider: 'spotify',
    uid: 'John',
    status: 'Fan',
    name: 'John',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false
  },
  {
    email: 'user27@example.com',
    provider: 'spotify',
    uid: 'Leonardo',
    status: 'Fan',
    name: 'Leonardo',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false
  },
  {
    email: 'user28@example.com',
    provider: 'spotify',
    uid: 'Giulia',
    status: 'Fan',
    name: 'Giulia',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false
  },
  {
    email: 'user29@example.com',
    provider: 'spotify',
    uid: 'Maria',
    status: 'Fan',
    name: 'Maria',
    artist0: 'Ed Sheeran',
    artist1: 'Ariana Grande',
    artist2: 'Drake',
    artist3: 'Beyoncé',
    artist4: 'Kendrick Lamar',
    is_artist: false
  }
]
  
  more_users.each do |user|
    User.create(user)
  end

  more_radunos = [
    {
    nome_darte_organizzatore: 'Taylor Swift',
    descrizione: 'video nuovo album',
    data: '10/07/2023',
    orario: '20:30',
    luogo: 'Via del Corso, Roma',
    email: 'user1@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Ed Sheeran',
    descrizione: 'esibizione nuovo singolo',
    data: '15/07/2023',
    orario: '19:30',
    luogo: 'Piazza di Spagna, Roma',
    email: 'user4@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Adele',
    descrizione: 'foto con i fan',
    data: '20/07/2023',
    orario: '22:00',
    luogo: 'Via Nazionale, Roma',
    email: 'user2@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Drake',
    descrizione: 'annuncio nuovo tour',
    data: '25/07/2023',
    orario: '21:30',
    luogo: 'Piazza Navona, Roma',
    email: 'user7@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Taylor Swift',
    descrizione: 'video nuovo album',
    data: '05/08/2023',
    orario: '20:30',
    luogo: 'Via del Corso, Roma',
    email: 'user1@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Bruno Mars',
    descrizione: 'esibizione nuovo singolo',
    data: '10/08/2023',
    orario: '19:30',
    luogo: 'Piazza di Spagna, Roma',
    email: 'user6@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Lady Gaga',
    descrizione: 'foto con i fan',
    data: '15/08/2023',
    orario: '22:00',
    luogo: 'Via Nazionale, Roma',
    email: 'user7@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Selena Gomez',
    descrizione: 'annuncio nuovo tour',
    data: '20/08/2023',
    orario: '21:30',
    luogo: 'Piazza Navona, Roma',
    email: 'user9@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Post Malone',
    descrizione: 'video nuovo album',
    data: '25/08/2023',
    orario: '20:30',
    luogo: 'Via del Corso, Roma',
    email: 'user16@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Dua Lipa',
    descrizione: 'esibizione nuovo singolo',
    data: '28/08/2023',
    orario: '19:30',
    luogo: 'Piazza di Spagna, Roma',
    email: 'user17@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Ligabue',
    descrizione: 'foto con i fan',
    data: '30/08/2023',
    orario: '22:00',
    luogo: 'Via Nazionale, Roma',
    email: 'user21@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Ligabue',
    descrizione: 'esibizione nuovo singolo',
    data: '02/09/2023',
    orario: '20:00',
    luogo: 'Piazza del Popolo, Roma',
    email: 'user21@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Vasco Rossi',
    descrizione: 'foto con i fan',
    data: '05/09/2023',
    orario: '21:30',
    luogo: 'Via dei Fori Imperiali, Roma',
    email: 'user22@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Jovanotti',
    descrizione: 'annuncio nuovo tour',
    data: '10/09/2023',
    orario: '19:00',
    luogo: 'Piazza Venezia, Roma',
    email: 'user23@example.com',
    user_id: nil
  },
  {
    nome_darte_organizzatore: 'Laura Pausini',
    descrizione: 'esibizione live',
    data: '15/09/2023',
    orario: '20:30',
    luogo: 'Piazza di Trevi, Roma',
    email: 'user24@example.com',
    user_id: nil
  }]

  more_radunos.each do |raduno|
    Raduno.create(raduno)
  end