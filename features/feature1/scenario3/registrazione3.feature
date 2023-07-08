Feature:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    Scenario: Registrazione utente con email già esistente
                        Given mi trovo sulla pagina di registrazione
                        When esiste già un utente con l'indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco nome "Francesco"
                        And inserisco cognome "Martignoni"
                        And inserisco data di nascita "04/04/2001"
                        And inserisco l'indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco una password che è sicura "Patatine1!"
                        And confermo la password che è "Patatine1!"
                        And clicco sul bottone "Sign up"
                        Then visualizzo un messaggio di errore sull'indirizzo email
                        Then rimango li sulla pagina di registrazione