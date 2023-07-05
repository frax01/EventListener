Feature:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    Scenario: Registrazione utente con email già esistente
                        Given mi trovo sulla pagina di registrazione
                        And esiste già un utente con l'indirizzo email "francescomartignoni1@gmail.com"
                        When inserisco l'indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco una password che è sicura "patatine1"
                        And confermo la password che è "patatine1"
                        And clicco sul bottone "Sign up"
                        Then visualizzo un messaggio di errore sull'indirizzo email
                        And rimango li sulla pagina di registrazione