/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/06/funcao-ains-para-inserir-elementos-em-determinada-posicao-do-array-maratona-advpl-e-tl-029/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe029
Exemplo de fun��o para inserir um elemento no array
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/display/tec/AIns
@obs Fun��o aIns
    Par�metros
        + Array que ter� o elemento inserido
        + Posi��o num�rica de inser��o do elemento

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe029()
    Local aArea     := FWGetArea()
    Local aNomes    := {}

    //Adicionando os nomes
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    
    //Redimensiona o Array, Aumentando uma posi��o, vai ficar como: ["Daniel", "Jo�o", "Maria", Nil]
    aSize(aNomes, Len(aNomes) + 1)

    //Insere o elemento na posi��o 2, vai ficar como: ["Daniel", Nil, "Jo�o", "Maria"]
    aIns(aNomes, 2)

    //Agora altera a posi��o 2
    aNomes[2] := "Jos�"

    //Exibe agora o que est� na posi��o 2
    FWAlertInfo("Posi��o 2 � " + aNomes[2], "Exemplo de aIns")

    FWRestArea(aArea)
Return
