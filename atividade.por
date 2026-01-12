programa
{
    funcao inicio()
    {
        cadeia nome
        cadeia vegetariano
        cadeia dieta
        cadeia prato
        cadeia pagamento

        escreva("Digite o nome do cliente: ")
        leia(nome)

        escreva("O cliente é vegetariano? (sim/nao): ")
        leia(vegetariano)

        escreva("O cliente está em dieta? (sim/nao): ")
        leia(dieta)

        // Regras de sugestão
        se (dieta == "sim" e vegetariano == "sim") {
            prato = "saladas"
        }
        senao se (dieta == "sim" e vegetariano == "nao") {
            prato = "frango grelhado"
        }
        senao se (dieta == "nao" e vegetariano == "sim") {
            prato = "macarrão"
        }
        senao {
            prato = "feijoada"
        }

        escreva("\nCliente: ", nome, "\n")
        escreva("Sugestão de prato: ", prato, "\n\n")

        escreva("Deseja pagar em dinheiro ou cartão? (dinheiro/cartao): ")
        leia(pagamento)

        se (pagamento == "dinheiro") {
            escreva("O cliente tem 15% de desconto")
        }
    }
}
