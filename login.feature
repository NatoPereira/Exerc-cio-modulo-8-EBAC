            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC Shop
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a página da EBAC Shop

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu faço login autenticado na "plataforma"
            E insiro o usuário e senha "válido"
            Então sou direcionado para a tela de "checkout"

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta Usuário ou senha inválidos
            Quando eu iserir o usuário ou senha "inválido"
            E clico no botão de login
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Tela de login
            Quando eu inserir os dados validos deve ser direcionado para a tela de <checkout>
            E insiro o usuário e senha <valido>
            Então sou direcionado para a tela de checkout finalizar <pedidos>

            Exemplos:
            | checkout  | valido   | pedidos    |
            | finalizar | valido   | finalizado |
            | finalizar | inválido | inválido   |