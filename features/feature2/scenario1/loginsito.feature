# Scenario1

Feature:  Login Event Listener:  
                Un utente già registrato prima di accedere al sito deve fare il login con le credenziali del sito o con quelle di Spotify(obbligatorio ogni 6 mesi per aggiornare i dati) e si procede con il controllo dello status. Successivamente si viene reindirizzati sulla homepage

                    Scenario: Login con il sito
                        Given sono un utente registrato
                        When mi loggo con le mie credenziali del sito
                        Then devo essere reindirizzato alla homepage
