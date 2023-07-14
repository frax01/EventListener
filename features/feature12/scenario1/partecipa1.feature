Feature:  Partecipazione Raduno da Fan:  
                Il Fan clicca sul Raduno per partecipare e viene reindirizzato ad una pagina di conferma
                  Scenario: Fan conferma partecipazione a un raduno
                    Given un Artista entra nel sito e crea 3 raduni
                    When entro nel sito come Fan
                    And clicco "Partecipa" per iscrivermi al raduno con descrizione "canzoni inedite"
                    Then vengo mandato alla pagina di conferma
                    And confermo l'iscrizione su "Iscriviti"
                    Then vengo riportato alla homepage
                    And mi aspetto di vedere il raduno a cui partecipo