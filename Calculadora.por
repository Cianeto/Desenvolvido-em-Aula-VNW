programa {
  inclua biblioteca Matematica --> mat
  funcao real entrada(cadeia num){
    real num1

    escreva("Digite o ", num, " valor: ")
    leia(num1)

    retorne num1
  }

  funcao inteiro escolherOpcao(){
    inteiro opc

    escreva("Qual operação deseja realizar:\n1 - Soma\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n5 - Potenciação\n6 - Radiciação\n")
    leia(opc)

    retorne opc
  }

  funcao realizarOperacaoAritmetica(real n1, real n2, inteiro opc){
    escolha(opc){
      caso 1:
        escreva("A soma dos valores é ", somar(n1, n2))
      pare
      caso 2:
        escreva("A subtração dos valores é ", subtrair(n1, n2))
      pare
      caso 3:
        escreva("A multiplicação dos valores é ", multiplicar(n1, n2))
      pare
      caso 4:
        escreva("A divisão dos valores é ", dividir(n1, n2))
      pare
      caso 5:
        escreva("O primeiro valor será a base, e o segundo valor, o expoente.\n")
        escreva("O primeiro valor elevado ao segundo valor é ", potenciar(n1, n2))
      pare
      caso 6:
        escreva("O primeiro valor será o radicando, e o segundo valor, o índice.")
        escreva("A raiz do primeiro valor pelo índice ", n2, " é ", mat.raiz(n1, n2))
      pare
    }
  }

  funcao real somar(real n1, real n2){
    real resultado = n1 + n2
    retorne resultado
  }
  funcao real subtrair(real n1, real n2){
    real resultado = n1 - n2
    retorne resultado
  }
  funcao real multiplicar(real n1, real n2){
    real resultado = n1 * n2
    retorne resultado
  }
  funcao real dividir(real n1, real n2){
    real resultado = n1 / n2
    retorne resultado
  }
  funcao real potenciar(real n1, real n2){
    real resultado = n1
    para(inteiro i = 0; i < n2; i++){
      resultado = resultado * n1
    }
    retorne resultado
  }

  funcao inicio(){
    inteiro opcao = escolherOpcao()

    real num1, num2
    num1 = entrada("primeiro")
    num2 = entrada("segundo")

    realizarOperacaoAritmetica(num1, num2, opcao)
  }
}
