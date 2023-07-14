Feature:  Crea Raduno da Artista:  
                L'Artista può creare eventi di tipo Raduno. Non ci sono limiti di posti o costi di accesso. Possono accedervi solo i Fan di quell'Artista. 
                Quando si clicca sulla sezione apposita per creare il Raduno si apre un form con le informazioni da inserire

                    #2
                    Scenario: Creazione di un nuovo raduno con fallimento
                        Given mi autentico come Artista
                        When clicco "Crea Raduno"
                        Then mi aspetto di essere sulla pagina di creazione del un nuovo raduno
                        When inserisco le informazioni errate del raduno
                        And creo il raduno con "Crea Raduno"
                        Then vedo l'errore "Data - inserisci una data valida"
                        And mi aspetto di rimanere sulla stessa pagina