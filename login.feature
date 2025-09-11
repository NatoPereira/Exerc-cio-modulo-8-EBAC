            # language: pt
            Funcionalidade: Login na EBAC Shop
            Como cliente da EBAC Shop
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o cliente está na página de login da EBAC Shop

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando o cliente digitar o usuário e senha "valido"
            E clicar em  "confirmar"
            Então deve ser direcionado para tela "checkout"

            Cenário: Ao inserir um dos campos inválidos deve ser exibida a mensagem de alerta "usuário ou senha inválidos"
            Quando o cliente digitar o usuário ou senha "invalido"
            E clicar em  "confirmar"
            Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Tela de login
            Quando eu inserir os dados validos deve ser direcionado para a tela de "<pedido>"
            E insiro o usuário e senha "<valido>"
            Então sou direcionado para a tela de checkot finalizar "<pedido>"

            Exemplos:
            | usuario  | pedido    | checkot   |
            | valido   | confirmar | finalizar |
            | invalido | confirmar | finalizar |
