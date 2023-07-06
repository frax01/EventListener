Feature:  Ricordami:  
                Il Listener che accede all'app, se ancora non l'ha fatto, ha la possibilità di cliccare su "ricordami" per salvare email e pw per i futuri accessi sia per Event Listener che per Spotify
                    
                    Scenario: Ricorda l'utente dal sito dopo la chiusura dell'applicazione
                        Given sono sulla pagina di accesso
                        When inserisco le credenziali valide
                        And seleziono l'opzione "Remember me"
                        And clicco su di "Log in"
                        And chiudo l'applicazione
                        And riapro l'applicazione
                        Then mi aspetto di essere sulla homepage

