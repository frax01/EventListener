Feature:  Crea Raduno da Artista:  
                L'Artista può creare eventi di tipo Raduno. Non ci sono limiti di posti o costi di accesso. Possono accedervi solo i Fan di quell'Artista. 
                Quando si clicca sulla sezione apposita per creare il Raduno si apre un form con le informazioni da inserire

                    #1
                    Scenario: Creazione di un nuovo raduno con successo
                        Given sono autenticato come Artista
                        When clicco in "Crea Raduno"
                        Then mi aspetto di essere sulla pagina di creazione di un nuovo raduno
                        When inserisco le informazioni corrette del raduno
                        And clicco su "Crea Raduno"
                        Then mi aspetto di essere sulla homepage