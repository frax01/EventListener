Feature:  Ricordami:  
                Il Listener che accede all'app, se ancora non l'ha fatto, ha la possibilità di cliccare su "ricordami" per salvare email e pw per i futuri accessi sia per Event Listener che per Spotify
                    
                    Scenario: Ricorda l'utente dal sito quando apri nuovamente l'applicazione
                        Given sono sulla pagina di accesso
                        When inserisco le credenziali valide
                        And seleziono l'opzione "Remember me"
                        And clicco su di "Log in"
                        And riapro l'applicazione
                        Then mi aspetto di essere già loggato e sulla homepage #comme faccio a skippare il prima passaggio in cui vengo mandato alla pagina di login?

