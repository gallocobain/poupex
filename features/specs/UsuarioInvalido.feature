#language: pt

Funcionalidade: Atendimento Web
    Para que eu possa solicitar um atendimento
    Sendo um usuário externo
    Posso acessar o portal da poupex e realizar o login para prosseguir

@UsuarioInvalidoWeb
Cenário: Login inválido no atendimento Web
    Dado que sou um usuário e acesso a página para login
    Quando tento realizar login com os dados CPF "<458874152666>" e senha "<123456789>"
    Então vejo a mensagem "Erro na autenticação: Usuário ou Senha inválidos. ×" 