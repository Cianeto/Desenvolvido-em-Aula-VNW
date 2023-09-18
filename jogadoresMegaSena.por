programa {
  /*VETOR MEGA SENA

  —> Deverão construir um vetor com 7 numeros premiados

  —> Deverá possuir 3 jogadores que irão digitar seus numeros escolhidos e eles serão armazenados em algum lugar

  —> No final do programa, os numeros deverão aparecer um de cada vez e no final anunciar qual é o nome do jogador vencedor*/
  inclua biblioteca Util --> u

  inteiro numDePlayers = 3
  inteiro acertos[numDePlayers] = {0, 0, 0}
  inteiro numerosPremiados[7] = {4,11,1,8,16,19,20}

  funcao escolherOs7Numeros(inteiro players[][]){
    inteiro i, j

    para(i=0; i<numDePlayers; i++){
      para(j=0; j<7; j++){
        escreva("\nJogador ", i+1, " escolha seu ", j+1, "º digito: ")
        leia(players[i][j])
      }
    }
    
  }
  funcao testarVencedor(inteiro players[][]){
    inteiro i, j, k

    para(i=0; i<7; i++){
      u.aguarde(1000)
      escreva("===============================\n", i+1, "º número: (", numerosPremiados[i], ")\n\n")
      para(j=0; j<numDePlayers; j++){
        u.aguarde(600)
        para(k=0; k<7; k++){
          se(players[j][k] == numerosPremiados[i]){
            escreva("O jogador ", j+1, " acertou!\n")
            acertos[j] = acertos[j] + 1
            pare
          }
        }
      }
    }
    para(i=0; i<numDePlayers; i++){
      se(acertos[i] == 7){
        escreva("\n===============================\nO JOGADOR ", i+1, " GANHOU NA MEGA SENA!!!\n===============================")
      }
    }
  }
  
  funcao inicio(){
    inteiro jogadores[numDePlayers][7]

    escreva("Que comecem os jogos!\n")
    escolherOs7Numeros(jogadores)
    testarVencedor(jogadores)
  }
}
