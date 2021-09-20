Feature: Página de Autenticação – Realização de autenticação
    Cliente é redirecionado para a página <Minha Conta> com sucesso.

    Scenario: Realizar o login com sucesso
        Given I open the url "http://automationpractice.com"
        When  I click on the link "Sign in"
        Then  I expect that the title is "Login - My Store"
        And   I clear the inputfield "#email"
        And   I add "filipecardosogabriel@gmail.com" to the inputfield "#email"
        And   I clear the inputfield "#passwd"
        And   I add "12345" to the inputfield "#passwd"
        And   I click on the button "#SubmitLogin"
        Then  I expect that the title is "My account - My Store"
