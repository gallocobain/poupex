class UsuarioInvalidoPage < SitePrism::Page

    set_url 'https://aw.fhe.org.br/internetBanking/ExibirLogon.do'

    element :input_cpf, 'input[name="username"]'
    element :input_senha, 'input[name="password"]'
    element :btn_entrar, '#Send'
    element :mensagem_erro, '.alert-danger'


    def usuarioInvalidoWeb(cpf, senha)
        input_cpf.set cpf
        input_senha.set senha
        btn_entrar.click
    end

end

