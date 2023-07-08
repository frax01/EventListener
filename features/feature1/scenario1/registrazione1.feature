Feature:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    Scenario: Registrazione utente con successo
                        Given che mi trovo sulla pagina di registrazione
                        When inserisco il mio nome "Francesco"
                        And inserisco il mio cognome "Martignoni"
                        And inserisco la mia data di nascita "04/04/2001"
                        And inserisco il mio indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco una password sicura "Patatine1!"
                        And confermo la password "Patatine1!"
                        And clicco sul pulsante "Sign up"
                        Then sono reindirizzato alla homepage