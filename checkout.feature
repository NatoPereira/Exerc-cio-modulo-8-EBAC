            #language: pt

            Funcionalidade: checkout
            Como cliente da EBAC Shop
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a plataformado EBAC Shop

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencher todos os campos obrigatórios
            E clicar no botão finalizar compra
            Então meu pedido deve ser processado com sucesso

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu preencher o campo e-mail com formato inválido
            E clicar no botão finalizar compra
            Então deve exibir uma mensagem de erro "Por favor, insira um endereço de e-mail válido."

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu deixar os campos obrigatórios vazios
            E clicar no botão finalizar compra
            Então deve exibir uma mensagem de alerta "Por favor, preencha os campos obrigatórios."

            Esquema do Cenário: Tela de cadastro
            Quando eu preencher o <email e senha>
            E clicar em <Cadastro>
            Então o sistema deve <concluir> o cadastro com sucesso

            Exemplos:
            | email e senha | Cadastro    | concluir  |
            | valido        | "Finalizar" | "sucesso" |
            | invalido      | "Finalizar" | "erro"    |
            | vazio         | "Finalizar" | "alerta"  |