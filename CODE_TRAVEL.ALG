Algoritmo "CODE_TRAVEL"
// Disciplina  :  [Recode Pro - Modulo 2]
// Professor   : Artur Brant
// Descrição   : Cadastro de Clientes e Destino desejado, com a função de pesquisar por nome de cliente cadastrado.
// Autor(a)    : Nome do(a) aluno(a) Rodrigo Covinha
// Data atual  : 21/06/2022

Var

   nomes: vetor [1..3] de caracter
   destinos: vetor [1..3] de caracter
   op, nome: caracter
   i, f, c, d: inteiro

   
   procedimento Inicializar ()

inicio

           enquanto op <> "4" faca
              Escreval ("*------------------------------------------------*")
              Escreval ("| ****       BEM-VINDO A CODE TRAVEL        **** |")
              Escreval ("*------------------------------------------------*")
              Escreval ("")
              Escreval (" (1) Cadastro de Clientes. ")
              Escreval (" (2) Consulta Cliente Cadastrado. ")
		        Escreval (" (3) Consultar Destino. ")
              Escreval (" (4) Sair... ")
              Escreval ("")
              Escreva  (" Opção: ")
                       leia (op)
                        Se op = "1" entao
                            limpaTela
                               Se f = 3 entao
                                   EscrevaL (" Não é mais possivel fazer Check-In para Este Vôo !")
                                   Escreval ("")
                                   Escreval ("")
                                        Senao
                                        cadastra_cliente ()
                               FimSe
                         FimSe
                         Se op = "2" entao
                            LimpaTela
                            pesquisar_cliente ()
                         FimSe
				 Se op = "3" entao
                            LimpaTela
                            pesquisar_destino()
                         FimSe
                         Se op = "4" entao
                            para i de 1 ate 3 faca
                                 nomes[i] <- "x"
                            FimPara
                                LimpaTela
                                   Escreval ("*-----------------------------------------*")
                                   Escreval ("* * *       Obrigado, Boa Viagem!     * * *")
                                   Escreval ("*-----------------------------------------*")
                         FimSe
           FimEnquanto


 FimProcedimento
               

               
 procedimento cadastra_cliente ()

Inicio

      Escreval ("*------------------------------------------------*")
      Escreval ("| ****   CADASTRO DE CLIENTES CODE TRAVEL   **** |")
      Escreval ("*------------------------------------------------*")
      Escreval ("")
        para i de 1 ate 3 faca
           se (nomes[i]="") entao
              Escreva ("Nome: ")
                      leia (nomes[i])
              Escreva ("Destino: ")
                      leia (destinos[i])

              f <- f + 1
                       limpaTela
           Fimse
        FimPara
               EscrevaL ("Fim Do Cadastro !")
 FimProcedimento
 


 Procedimento pesquisar_cliente ()

inicio

      Escreval ("*-----------------------------------------*")
      Escreval ("* * *  PESQUISAR CLIENTE CADASTRADO   * * *")
      Escreval ("*-----------------------------------------*")
      Escreval ("")
               c <- 0
      Escreva ("Digite o Nome do Cliente: ")
              Leia (nome)
                   Para i de 1 ate 3 faca
                    Se nome = nomes[i] entao
                     EscrevaL ("Nome: ",nomes[i])
                     EscrevaL ("Destino: ",destinos[i])
                     c <- c + 1
                     FimSe
                   FimPara
                   Se c = 0 entao
                      EscrevaL ("Cliente não Cadastrado!")
                   FimSe
                   Voltar_Menu ()
                   LimpaTela
  FimProcedimento

  Procedimento pesquisar_destino ()

inicio

      Escreval ("*-----------------------------------------*")
      Escreval ("* * *  PESQUISAR DESTINO CADASTRADO   * * *")
      Escreval ("*-----------------------------------------*")
      Escreval ("")
               d <- 0
      Escreva ("Digite o Destino: ")
              Leia (nome)
                   Para i de 1 ate 3 faca
                    Se nome = destinos[i] entao
                     EscrevaL ("Nome: ",nomes[i])
                     EscrevaL ("Destino: ",destinos[i])
                     d <- d + 1
                     FimSe
                   FimPara
                   Se d = 0 entao
                      EscrevaL ("Destino não Cadastrado!")
                   FimSe
                   Voltar_Menu ()
                   LimpaTela
  FimProcedimento

  Procedimento  Voltar_Menu ()
inicio

      Escreva ("Voltar ao Menu? (s/n): ")
              Leia (op)
              se op = "s" entao
                 LimpaTela
                       inicializar ()
                       senao
                 LimpaTela
                        pesquisar_cliente
              FimSe
  FimProcedimento
  
inicio

      inicializar ()

Fimalgoritmo