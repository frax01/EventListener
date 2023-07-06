Feature: Password dimenticata
  L'utente può reimpostare la sua password nel caso l'abbia dimenticata

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
