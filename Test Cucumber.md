**User Stories Event Listener**

### 1 - ACCESSO:
### 01 - SCENARIO 1: OK, SCENARIO 2: OK, SCENARIO 3: OK
*Feature*:  Registrazione Event Listener:  
                Un nuovo utente deve registrarsi al sito e fare il login con Spotify. Viene quindi salvato sul database

                    #1 OK
                    Scenario: Registrazione utente con successo
                        Given che mi trovo sulla pagina di registrazione
                        When inserisco il mio nome "Francesco"
                        And inserisco il mio cognome "Martignoni"
                        And inserisco la mia data di nascita "04/04/2001"
                        And inserisco il mio indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco una password sicura "Patatine1!"
                        And confermo la password "Patatine1!"
                        And clicco sul pulsante "Sign up"
                        Then sono reindirizzato alla homepage

                    #2 OK
                    Scenario: Registrazione utente con password non valida
                        Given sono sulla pagina di registrazione
                        When inserisco il nome "Francesco"
                        And inserisco il cognome "Martignoni"
                        And inserisco la data di nascita "04/04/2001"
                        And inserisco la mia email "francescomartignoni1@gmail.com"
                        And metto una password non sicura "patat"
                        And confermo questa password "patat"
                        And clicco su "Sign up"
                        Then rimango nella pagina di registrazione

                    #3 OK
                    Scenario: Registrazione utente con email già esistente
                        Given mi trovo sulla pagina di registrazione
                        When esiste già un utente con l'indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco nome "Francesco"
                        And inserisco cognome "Martignoni"
                        And inserisco data di nascita "04/04/2001"
                        And inserisco l'indirizzo email "francescomartignoni1@gmail.com"
                        And inserisco una password che è sicura "Patatine1!"
                        And confermo la password che è "Patatine1!"
                        And clicco sul bottone "Sign up"
                        Then visualizzo un messaggio di errore sull'indirizzo email
                        Then rimango li sulla pagina di registrazione

### 02 - SCENARIO 1: OK, SCENARIO 2: EMPTY
*Feature*:  Login Event Listener:  
                Un utente già registrato prima di accedere al sito deve fare il login con le credenziali del sito o con quelle di Spotify(obbligatorio ogni 6 mesi per aggiornare i dati) e si procede con il controllo dello status. Successivamente si viene reindirizzati sulla homepage

                #1 OK
                Scenario: Login con il sito
                        Given sono un utente registrato
                        When mi loggo con le mie credenziali del sito
                        Then devo essere reindirizzato alla homepage

                #2

### 03 - SCENARIO 1: OK
*Feature*:  Logout:
                L'utente esce dall'account e si viene reindirizzati alla pagina di accesso iniziale

                    #1 OK
                    Scenario: User logs out successfully
                        Given sono registrato
                        When mi loggo con le mie credenziali
                        And mi trovo sulla homepage
                        And clicco Logout
                        Then dovrei essere rimandato alla pagina di login iniziale

### 04 - SCENARIO 1: FAIL, SCENARIO 2: OK
*Feature*:  Password dimenticata:  
                L'utente può reimpostare la sua password nel caso l'abbia dimenticata

                    #1 FAIL
                    Scenario: Reimposta la password con successo
                        Given sono sulla pagina di login
                        When clicco sul link "Forgot your password?"
                        And vengo reindirizzato alla pagina di reset
                        And inserisco l'email "francescomartignoni1@gmail.com"
                        And clicco su quel pulsante "Send me reset password instructions"
                        And clicco e vengo reindirizzato al link nella email di reset password
                        And inserisco la nuova password corretta "Patatine12!"
                        And confermo la nuova password corretta "Patatine12!"
                        And clicco "Change my password"
                        Then sono sulla homepage

                    #2 OK
                    Scenario: Email di reset password non esistente
                        Given sono sul login
                        When click on "Forgot your password?"
                        And vengo mandato alla pagina di reset
                        And inserisco una mail non esistente "fra123@gmail.com"
                        And click "Send me reset password instructions"
                        Then visualizzo l'errore "Email not found"

### 05 - SCENARIO 1: FAIL, SCENARIO 2: EMPTY, SCENARIO 3: EMPTY
*Feature*:  Ricordami:  
                Il Listener che accede all'app, se ancora non l'ha fatto, ha la possibilità di cliccare su "ricordami" per salvare email e pw per i futuri accessi sia per Event Listener che per Spotify

                #1 FAIL
                Scenario: Ricorda l'utente dal sito quando apri nuovamente l'applicazione
                        Given sono sulla pagina di accesso
                        When inserisco le credenziali valide
                        And seleziono l'opzione "Remember me"
                        And clicco su di "Log in"
                        And chiudo l'applicazione
                        And riapro l'applicazione
                        Then mi aspetto di essere già loggato e sulla homepage

                #2 EMPTY
                Scenario: Ricorda l'utente da Spotify dopo la chiusura dell'applicazione

                #3 EMPTY
                Scenario: Compila automaticamente la pw se la mail inserita aveva cliccato Remember me

### 2 - VISIONE SEZIONE RADUNO:
### 06
*Feature*:  Visualizzazione Artisti di cui si è Fan:  
                Non appena si accede all'applicazione vengono visualizzati sulla sinistra tutti gli Artisti di cui si è Fan, se presenti
### 07
*Feature*:  Visualizzazione Raduni prenotati:  
                Non appena si accede all'applicazione vengono visualizzati sulla destra tutti i Raduni a cui ci si è prenotati, se presenti
### 08 - SCENARIO 1: FAIL - DA COMPLETARE
*Feature*:  Visualizzazione Raduni creati:  
                Non appena un Artista accede all'applicazione vengono visualizzati sulla destra tutti i Raduni da lui creati, se presenti

                #1 FAIL - DA COMPLETARE
                Scenario: Visualizzazione dei raduni creati
                    Given sono autenticato come Artista
                    And ho creato alcuni raduni
                    When accedo all'applicazione
                    Then mi aspetto di vedere i raduni creati nella sezione corretta
### 09
*Feature*:  Sezione Raduno da Fan:  
                Un Fan vede solo i Raduni degli Artisti di cui è Fan, a cui può accedere e partecipare

### 3 - CREAZIONE RADUNO:
### 10 - SCENARIO 1: OK
*Feature*:  Crea Raduno da Artista:  
                L'Artista può creare eventi di tipo Raduno. Non ci sono limiti di posti o costi di accesso. Possono accedervi solo i Fan di quell'Artista. 
                Quando si clicca sulla sezione apposita per creare il Raduno si apre un form con le informazioni da inserire

                    #1 OK
                    Scenario: Creazione di un nuovo raduno
                        Given sono autenticato come Artista
                        When clicco su "Crea Raduno"
                        Then mi aspetto di essere sulla pagina di creazione di un nuovo raduno
                        When inserisco le informazioni del raduno
                        And clicco su "Crea"
                        Then mi aspetto di essere sulla pagina del raduno creato
                        And mi aspetto di vedere i dettagli del raduno

### 11
*Feature*:  Visualizzazione Raduno creato:  
                Una volta creato correttamente il Raduno si viene reindirizzati alla homepage e quel Raduno viene visualizzato sulla destra. In esso è presente anche un pulsante per modificare il Raduno o per cancellarlo

### 4 - PARTECIPAZIONE RADUNO:
### 12
*Feature*:  Partecipazione Raduno da Fan:  
                Il Fan clicca sul Raduno per partecipare e prima di iscriversi gliene viene chiesta la conferma tramite un alert
### 13
*Feature*:  Conferma partecipazione al Raduno:  
                Il Fan che si è iscritto al Raduno correttamente riceve una mail(stessa usata per il login) con le informazioni di conferma per la partecipazione
### 14
*Feature*:  Cancellazione partecipazione al Raduno:  
                Il Fan che si è iscritto al Raduno può cancellare la sua partecipazione con un pulsante apposito sul raduno stesso
### 15
*Feature*:  Informazioni sul Raduno:  
                L'organizzatore del Raduno riceve una mail settimanalmente con le informazioni di quanti partecipanti ci sono al Raduno

### 5 - MODIFICA IMPOSTAZIONI RADUNO:
### 16 -SCENARIO 1: OK
*Feature*:  Modifica organizzazione Raduno:  
                L'organizzatore del Raduno può modificare quest'ultimo cliccando su di un apposito pulsante del Raduno che viene visualizzato lateralmente sulla homepage. Questo ci reindirizza allo stesso form di compilazione di quando si deve creare il Raduno ma con i campi precompilati. Una volta fatto il cambiamento si ritorna sulla homepage

                #1 OK
                Feature: Modifica organizzazione Raduno
                    Scenario: Modifica un raduno esistente
                        Given sono un utente loggato sulla homepage
                        And vado su "Crea Raduno"
                        And creo un raduno cliccando su "Create Raduno"
                        When clicco sul pulsante "Modifica" per il raduno con descrizione "video album"
                        Then vengo reindirizzato alla pagina di modifica del raduno
                        Then vedo i campi del raduno precompilati con i seguenti dettagli
                        | descrizione   | data       | orario  | luogo          |
                        | video album   | 2023-07-10 | 21:00:00.000   | Piazza di Spagna |
                        When compilo i nuovi dettagli del raduno:
                        | descrizione   | data       | orario  | luogo          |
                        | video album   | 2023-07-10 | 23:30:00:00   | Piazza di Spagna |
                        And spingo "Update Raduno"
                        Then vengo reindirizzato alla homepage
                        Then vedo il raduno modificato con i dettagli aggiornati:
                        | descrizione   | data       | orario  | luogo          |
                        | video album   | 2023-07-10 | 23:30   | Piazza di Spagna |

### 17
*Feature*:  Notifica di modifica organizzazione Raduno:  
                L'applicazione non appena un Raduno viene modificato manda un messaggio(mail broadcast) a tutti gli iscritti con i cambiamenti apportati. La mail viene mandata solo se c'è almeno un cambiamento nelle informazioni scritte
### 18
*Feature*:  Cancellazione Raduno:  
                L'organizzatore del Raduno può eliminare quest'ultimo cliccando su di un apposito pulsante del Raduno che viene visualizzato lateralmente sulla homepage. Viene chiesta la conferma dell'operazione prima di procedere e una volta eliminato il Raduno scompare. Questa operazione viene fatta tutta sulla homepage
### 19
*Feature*:  Notifica di cancellazione Raduno:  
                L'applicazione non appena un Raduno viene cancellato manda un messaggio(mail broadcast) a tutti gli iscritti con la cancellazione del Raduno


**TEST VERTICALI:**
### 1
*Feature*: -> Fallimento creazione Raduno da Listener:  
                Il Listener non autorizzato prova a creare il raduno(ad esempio con un link mandato da un altro utente autorizzato a crearlo) ma viene riportato alla homepage e viene notificato dell'errore 
### 2
*Feature*: -> Fallimento creazione Raduno da Listener:  
                Il Listener manda una POST HTTP al server con le informazioni per creare un raduno. Non viene creato il raduno e l'utente viene notificato dell'errore

### 3
*Feature*: -> Fallimento partecipazione Raduno da Listener:  
                Il Listener non autorizzato prova a visualizzare il raduno(ad esempio con un link mandato da un altro utente autorizzato a visualizzarlo) ma viene riportato alla homepage  e viene notificato dell'errore  
### 4
*Feature*: -> Fallimento partecipazione Raduno da Listener:  
                Il Listener manda una POST HTTP al server con la richiesta di partecipazione ad un raduno a cui non è autorizzato a partecipare. Non viene iscritto il raduno e viene notificato dell'errore