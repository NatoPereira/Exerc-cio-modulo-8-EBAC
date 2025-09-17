            # language: pt

            Funcionalidade: Autenticação de login na EBAC Shop
            Como cliente da EBAC Shop
            Quero fazer o login de autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da EBAC Shop

            Cenário: Ao inserir dados validos deve ser direcionado para a tela de checkout
            Quando eu inserir o usuário e a senha "válidos"
            E eu clicar no botão "Entrar"
            Então devo ser direcionado para a tela de "checkout"

            Cenário: Ao inserir dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            Quando eu inserir o usuário e a senha "inválidos"
            E eu clicar no botão "Entrar"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Login com múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então devo ser direcionado para a tela de <checkout>

            Exemplos:
            | usuario            | senha      | checkout   |
            | "cliente@ebac.com" | "senha123" | "valido"   |
            | "teste@ebac.com"   | "123456"   | "invalido" |





