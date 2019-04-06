class OuvidoriaPage < SitePrism::Page
 
    element :input_nome, '#campoNome'
    element :input_cpf, '#campoCPF'
    element :input_dataNascimento, '#campoDtNasc'
    element :input_mensagem, '#campoMensagem'
    element :input_cep, '#campoCEP'
    element :input_complemento, '#campoComplemento'
    element :input_endereco, '#campoEndereco'
    element :input_ddd_residencial, '#campoDDD'
    element :input_telefone_residencial, '#campoTelefone'
    element :input_ddd_trabalho, '#campoDDDTrabalho'
    element :input_telefone_trabalho, '#campoTelefoneTrabalho'
    element :input_telefone_trabalho_ramal, '#campoRamal'
    element :input_ddd_celular, '#campoDDDCelular'
    element :input_telefone_celular, '#campoCelular'
    element :input_email, '#campoEmail'
    element :input_campo_observacao, '#campoObservacao'
    element :input_capcha, '#campoCaptcha'
    element :button_enviar, '.btn-primary'
    element :mensagem_sucesso, '.alert-success'
    element :mensagem_capcha_invalido, '.alert-warning h4'
    element :mensagem_erro, '.lead'


    def formulario_contato(dados)
    sleep(1)
    find('#campoOpcaoContato').all('option')[rand(1..4)].select_option
    input_nome.set dados['Nome']
    input_cpf.set dados['CPF']
    input_dataNascimento.set dados['Data Nascimento']
    all('.btn-group')[0].click #sexo
    input_mensagem.set dados['Mensagem']
    all('.btn-group')[1].click #meio de retorno
    input_cep.set dados['CEP']
    input_endereco.click
    input_complemento.set dados['Complemento']
    input_ddd_residencial.set dados['DDD Residencial']
    input_telefone_residencial.set dados['Telefone Residencial']
    input_ddd_trabalho.set dados['DDD Trabalho']
    input_telefone_trabalho.set dados['Telefone Trabalho']
    input_ddd_celular.set dados['DDD Celular']
    input_telefone_celular.set dados['Telefone Celular']
    input_telefone_trabalho_ramal.set dados['Ramal']
    input_email.set dados['Email']
    input_campo_observacao.set dados['Observação']
    input_capcha.set dados['Capcha']
    button_enviar.click
    #sleep (4)
    end
end