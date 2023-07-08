Feature:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    Scenario: Registrazione utente con password non valida
                        Given sono sulla pagina di registrazione
                        When inserisco il nome "Francesco"
                        And inserisco il cognome "Martignoni"
                        And inserisco la data di nascita "04/04/2001"
                        And inserisco la mia email "francescomartignoni1@gmail.com"
                        And metto una password non sicura "patat"
                        And confermo questa password "patat"
                        And clicco su "Sign up"
                        Then rimango nella pagina di registrazione