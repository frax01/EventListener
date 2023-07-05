Feature:  Logout:  
                L'utente esce dall'account e si viene reindirizzati alla pagina di accesso iniziale

                    Scenario: User logs out successfully
                        Given sono loggato
                        When clicco Logout
                        Then dovrei essere rimandato alla pagina di login iniziale