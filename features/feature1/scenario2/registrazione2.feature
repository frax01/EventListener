Feature:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    Scenario: Registrazione utente con password non valida
                        Given sono sulla pagina di registrazione
                        When inserisco la mia email "francescomartignoni1@gmail.com"
                        And metto una password non sicura "patat"
                        And confermo questa password "patat"
                        And clicco su "Sign up"
                        And rimango nella pagina di registrazione