Feature: Password dimenticata
  L'utente può reimpostare la sua password nel caso l'abbia dimenticata

  Scenario: Reimposta la password con successo
    Given sono sulla pagina di login
    When clicco sul link "Forgot your password?"
    And vengo reindirizzato alla pagina di reset
    And inserisco l'email "francescomartignoni1@gmail.com"
    And clicco su quel pulsante "Send me reset password instructions"
    And vengo mandato sulla pagina di cambio password
    And clicco sul link del terminale #come faccio???
    And vengo rimandato alla pagina di reset
    And inserisco la nuova password corretta "Patatine17!"
    And confermo l'inserimento della nuova password corretta "Patatine17!"
    And clicco "Change my password"
    Then sono sulla homepage
