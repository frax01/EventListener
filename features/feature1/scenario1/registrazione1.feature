Feature:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    Scenario: Registrazione utente con successo
                        Given che mi trovo sulla pagina di registrazione
                        And inserisco il mio indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco una password sicura "patatine1"
                        And confermo la password "patatine1"
                        And clicco sul pulsante "Sign up"
                        And sono reindirizzato alla pagina degli utenti