Feature: Password dimenticata
  L'utente può reimpostare la sua password nel caso l'abbia dimenticata

    Scenario: Email di reset password non esistente
      Given sono sul login
      When click on "Forgot your password?"
      And vengo mandato alla pagina di reset
      And inserisco una mail non esistente "fra123@gmail.com"
      And click "Send me reset password instructions"
      Then visualizzo l'errore "Email not found"