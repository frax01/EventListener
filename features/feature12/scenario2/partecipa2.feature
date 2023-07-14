Feature:  Partecipazione Raduno da Fan:  
                Il Fan clicca sul Raduno per partecipare e viene reindirizzato ad una pagina di conferma
                  Scenario: Fan conferma partecipazione a un raduno
                    Given un Artista entra nel sito e crea tre raduni
                    When entro nel sito da Fan
                    And clicco "Partecipa" per iscrivermi al raduno che ha descrizione "canzoni inedite"
                    Then vengo mandato alla pagina di iscrizione
                    And confermo l'iscrizione cliccando su "Iscriviti"
                    Then vengo riportato sulla homepage
                    And vedo il raduno a cui partecipo
                    And provo ad iscrivermi di nuovo cliccando su Partecipa allo stesso Raduno con descrizione "canzoni inedite"
                    Then non accade niente e rimango sulla homepage