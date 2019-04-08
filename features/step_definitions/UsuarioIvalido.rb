#encoding: utf-8

Dado("que sou um usuário e acesso a página para login") do
    @UsuarioWeb.load

end
  
Quando("tento realizar login com os dados CPF {string} e senha {string}") do |cpf, senha|
    @UsuarioWeb.usuarioInvalidoWeb(cpf,senha)
end
  
Então("vejo a mensagem {string}") do |mensagem_erro|
    expect(@UsuarioWeb.mensagem_erro.text).to eql mensagem_erro
end