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