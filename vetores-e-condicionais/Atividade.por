programa {
  funcao inicio() {
    
    cadeia nomes[5]
    inteiro valores[5]
    inteiro desconto
    inteiro valorfinal
    inteiro soma
    inteiro qtdDesconto
    inteiro i

    escreva("Qual o desconto do dia? ")
    leia(desconto)

    escreva("\n------------------------\n")

    para (i = 0; i < 5; i++) {
      escreva("Cliente " + (i + 1) + " - Qual o nome? ")
      leia(nomes[i])

      escreva("Quanto " + nomes[i] + " gastou na loja? ")
      leia(valores[i])

      escreva("\n")
    }
    

    escreva("\n------------------------\n")

    // Inicializa acumuladores
    soma = 0
    qtdDesconto = 0

    para (i = 0; i < 5; i++) {

      se (valores[i] >= 100) {

      valorfinal = valores[i] - desconto
      qtdDesconto = qtdDesconto + 1
      soma = soma + valorfinal

      escreva("-> " + nomes[i] + " recebeu o desconto.\n")
      escreva("Valor total (com o desconto): " + valorfinal + "\n\n")  
    }

    senao {

      soma = soma + valores[i]
      
      escreva(nomes[i] + " não recebeu o desconto.\n")
      escreva("Valor total: " + valores[i] + "\n\n")
    }
    }
    escreva("\n------------------------\n")

    escreva("Valor total recebido pela loja: " + soma + "\n")

    escreva("Quantos usuarios tiveram desconto " + qtdDesconto + "\n")

  }
}
