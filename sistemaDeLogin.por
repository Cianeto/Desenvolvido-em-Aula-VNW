programa{
  /*Construa um sistema de login e verifique se as credenciais estão corretas.
    Se as credenciais estiverem erradas em 3 tentativas, bloqueie o usuário. */
  cadeia user = "Flamingo"
  cadeia pwd = "peixoto4040"
  
  /*funcao verificarLogin(){ 
    
  }*/

  funcao inicio(){
    cadeia userReceived
    cadeia pwdReceived

    para(inteiro i = 0; i < 3; i++){
      escreva("user: ")
      leia(userReceived)
      escreva("pwd: ")
      leia(pwdReceived)
      escreva("\n")

      se(userReceived == user e pwdReceived == pwd){
        escreva("Desbloqueado")
        pare
      }senao se(i == 2){
        escreva("Bloqueado")
      }
		}
	}
}

