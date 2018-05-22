### PROJETO ####

exemplo <- function(z)
{
  Nomes <- as.character()
  prova1 <- as.numeric()
  prova2 <- as.numeric()
  prova3 <- as.numeric()
  MediaEscolar <- as.numeric()
  situacao <- as.character()
  
  alunos <- data.frame(Nomes, prova1, prova2, prova3, MediaEscolar, situacao)
  alunos$situacao <- as.character(alunos$situacao) # -> redefinição da variavel 
  alunos$Nomes <- as.character(alunos$Nomes) # -> redefinição da variavel 
  
  print("Esta função realiza as seguintes atividades")
  print("1 - Cadastra alunos")
  print("2 - Recebe suas notas")
  print("3 - Mostra sua média e diz se foi aprovado")
  
  # Recebe as notas do aluno i nos 3 exercicios
  print("Cadastro de Alunos --> 1")
  x <- scan(n=1)
  i <-1
  while(x==1)
  {
    print("Nome:")
    nome<-scan(what=character(),nmax=1)
    
    print("Nota 1:")
    Prova1<-scan(n=1)
    
    print("Nota 2:")
    Prova2<-scan(n=1)
    
    print("Nota 3:")
    Prova3<-scan(n=1)
    
    notas <-c(prova1,Prova2,prova3)
      for (j in 1:length(notas)) {
        cat("Nota na Prova",j,"-->")
        cat("",notas[j],"\n")
        
      }
    
    MediaEscolar<-mean(notas)
    cat("Média do Aluno:",MediaEscolar,"\n")
    
    
    if (MediaEscolar>=7)
    {
      print("Aluno Aprovado")
      Situação<-"Aprovado"
    } 
    
    if (MediaEscolar<7)
    {
      print("Aluno Reprovado")
      Situação<-"Reprovado"
    }
    
    alunos[i,]<-c(nome,Prova1,Prova2,Prova3,MediaEscolar,Situação)
    print("Cadastrar outro aluno?   Sim-> 1    Não -> 0")
    x<-scan(n=1)
    
    
   
    i<-i+1
  } #fim do while
  
  print("Obrigado")
  print("Banco de dados")
  
  return(alunos)
  
  
}
