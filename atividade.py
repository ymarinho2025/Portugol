import random, time, sys
cardapio = {
    "normal": ["Feijoada"],
    "normal_dieta": ["Frango Grelhado"],
    "vegetariano": ["macarrão"],
    "vegetariano_dieta": ["salada"],
}

cliente = ["Maria", "José", "Lucas", "Pedro", "Júlia"]
escolha_cliente = random.choice(cliente)

print(f"Nome do cliente: {escolha_cliente}")

pergunta1 = input("Cliente vegetariano? (sim/nao): ")
pergunta2 = input("Cliente de dieta? (sim/nao): ")
print("-----------------------------------\n")

if pergunta1 == "sim" and pergunta2 == "sim":
    print(f"Cliente: {escolha_cliente}")
    print("Sugestão de prato: ", random.choice(cardapio["vegetariano_dieta"]))
    print("\n-----------------------------------")

elif pergunta1 == "sim" and pergunta2 == "nao":
    print(f"Cliente: {escolha_cliente}")
    print("Sugestão de prato: ", random.choice(cardapio["vegetariano"]))
    print("\n-----------------------------------")
    
elif pergunta1 == "nao" and pergunta2 == "sim":
    print(f"Cliente: {escolha_cliente}")
    print("Sugestão de prato: ", random.choice(cardapio["normal_dieta"]))
    print("\n-----------------------------------")
    
elif pergunta1 == "nao" and pergunta2 == "nao":
    print(f"Cliente: {escolha_cliente}")
    print("Sugestão de prato: ", random.choice(cardapio["normal"]))
    print("\n-----------------------------------")
    
else:
    print("Resposta inválida\nAceitamos apenas 'sim' ou 'nao' como resposta.\n")
    sys.exit()
    
pagamento = input("Qual a forma de pagamento: (dinheiro/cartao): ")

if pagamento == "dinheiro":
    print("\n **Cliente possui 15% de desconto**\n")
    print ("Programa finalizado. Tempo de execução: ", time.process_time(), "segundos")
        
elif pagamento == "cartao":
    print("\n **Cliente não possui desconto**\n")
    print ("Programa finalizado. Tempo de execução: ", time.process_time(), "segundos")
    
else:
    print("Resposta inválida\nAceitamos apenas 'dinheiro' ou 'cartao' como resposta.\n")
    sys.exit()