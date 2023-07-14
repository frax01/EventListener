Feature:  Crea Raduno da Artista:  
                L'Artista può creare eventi di tipo Raduno. Non ci sono limiti di posti o costi di accesso. Possono accedervi solo i Fan di quell'Artista. 
                Quando si clicca sulla sezione apposita per creare il Raduno si apre un form con le informazioni da inserire

                    #3
                    Scenario: Creazione di un nuovo raduno da Listener -> Fallimento
                        Given mi autentico come Listener
                        When vado su "Crea Raduno"
                        Then mi aspetto di restare sulla homepage