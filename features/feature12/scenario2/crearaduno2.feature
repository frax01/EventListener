# Scenario 2
Feature:  Sezione Crea Raduno da Listener o Fan:  
                Se si è solo Listener o Fan la sezione Crea Raduno è visibile, ma opaca e non selezionabile

                    Scenario: Visualizzazione della sezione Crea Raduno da Fan
                                        Given sono autenticato da Fan
                                        Then mi aspetto di vedere il bottone "Crea Raduno" non selezionabile