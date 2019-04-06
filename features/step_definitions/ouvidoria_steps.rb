#encoding: utf-8


Dado("que acessei a página de cadastro") do
    visit 'https://aw.fhe.org.br:8440/formulariosweb/formContatoOuvidoria?origem=poupex'
end

Dado("possuo os seguintes dados:") do |table|
    @Dados = table.rows_hash
    
end

Quando("preencho o formulario de contato") do
    
    @ouvidoria.formulario_contato(@Dados)
end
  
Então("vejo a mensagem de sucesso {string}") do |mensagem_sucesso|
    expect(@ouvidoria.mensagem_sucesso.text).to eql mensagem_sucesso
end

Quando("preencho o formulario de contato com capcha inválido") do
    @ouvidoria.formulario_contato(@Dados)
end
  
Então("vejo as mensagens {string} e {string}") do |mensagem_erro, mensagem_capcha_invalido|
    expect(@ouvidoria.mensagem_erro.text).to eql mensagem_erro
    expect(@ouvidoria.mensagem_capcha_invalido.text).to eql mensagem_capcha_invalido
end