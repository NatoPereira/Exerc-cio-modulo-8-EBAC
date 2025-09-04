            #language: pt

            Funcionalidade: Configurar produtos
            Como cliente da EBAC Shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a plataformado EBAC Shop

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar "cor, tamanho e quantidade"
            E o botão adicionar ao carrinho deve estar "habilitado"
            Então o produto deve ser adicionado ao "carrinho"

            Cenário:Deve permitir apenas 10 produtos por venda
            Quando eu selecionar a quantidade de "10 produtos"
            E deve exibir uma mensagem de alerta "O número máximo de produtos por venda é permitido"
            Então os produtos devem ser adicionados ao "carrinho"

            Cenário: Quando eu clicar no botão limpar
            Quando eu confirmar a ação de "limpar"
            Então deve voltar ao estado "original"
            E o botão adicionar ao carrinho deve estar "abilitado"

            Esquema do Cenário: Configuração de produtos
            Quando eu selecionar a <cor>
            E selecionar o <tamanho>
            E selecionar a <quantidade>

            Exemplos:
            | cor        | tamanho | quantidade |
            | "azul"     | "M"     | "2"        |
            | "vermelho" | "G"     | "3"        |
            | "amarelo"  | "P"     | "1"        |


