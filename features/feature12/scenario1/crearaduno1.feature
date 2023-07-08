# Scenario 1
Feature:  Sezione Crea Raduno da Listener o Fan:  
                Se si è solo Listener la sezione Crea Raduno è visibile, ma opaca e non selezionabile

                    Scenario: Visualizzazione della sezione Crea Raduno da Listener
                                        Given sono autenticato da Listener
                                        Then mi aspetto il bottone "Crea Raduno" non selezionabile