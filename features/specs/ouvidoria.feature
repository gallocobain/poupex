#language: pt

Funcionalidade: Ouvidoria
    Para que eu possa realizar um contado com a poupex
    Sendo um usuário externo
    Posso acessar o portal da poupex e preencher o formulário de contato


Contexto: Formulario Contato
Dado que acessei a página de cadastro

@ouvidoria_sucesso
Cenario: Preencher Formulario Contato

    E possuo os seguintes dados:
      | Nome                 | Teste automação                  |
      | CPF                  | 39483227755                      |
      | Data Nascimento      | 22071982                         |
      | Mensagem             | Teste de automação ouvidoria     |
      | CEP                  | 71060230                         |
      | Complemento          | 13                               |
      | DDD Residencial      | 61                               |
      | Telefone Residencial | 35688845                         |
      | DDD Trabalho         | 61                               |
      | Telefone Trabalho    | 34521455                         |
      | DDD Celular          | 61                               |
      | Telefone Celular     | 996114578                        |
      | Ramal                | 345                              |
      | Email                | jarel12@gmail.com                |
      | Observação           | Teste automação campo observação |
      | Capcha               | 12345                            |

    Quando preencho o formulario de contato
    Então vejo a mensagem de sucesso "Formulario registrado com sucesso!"

@ouvidoria_capcha_Invalido
Cenario: Preenchimento do formulario com capcha invalido

    E possuo os seguintes dados:

      | Nome                 | Teste automação                  |
      | CPF                  | 39483227755                      |
      | Data Nascimento      | 22071982                         |
      | Mensagem             | Teste de automação ouvidoria     |
      | CEP                  | 71060230                         |
      | Complemento          | 13                               |
      | DDD Residencial      | 61                               |
      | Telefone Residencial | 35688845                         |
      | DDD Trabalho         | 61                               |
      | Telefone Trabalho    | 34521455                         |
      | DDD Celular          | 61                               |
      | Telefone Celular     | 996114578                        |
      | Ramal                | 345                              |
      | Email                | jarel12@gmail.com                |
      | Observação           | Teste automação campo observação |
      | Capcha               | 12345                            |

    Quando preencho o formulario de contato com capcha inválido
    Então vejo as mensagens "Infelizmente ocorreu um erro ao tentar processar o envio de sua mensagem." e "Código de verificação incorreto!"
