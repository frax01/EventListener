# Scenario 1

Feature:  Visualizzazione Raduni creati:  
                Non appena un Artista accede all'applicazione vengono visualizzati sulla destra tutti i Raduni da lui creati, se presenti

                Scenario: Visualizzazione dei raduni creati
                    Given mi sono già registrato
                    When mi autentico come Artista
                    And accedo all'applicazione e avevo già creato alcuni raduni
                    Then mi aspetto di vedere i raduni creati nella sezione corretta