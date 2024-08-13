/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/16/funcao-arraycompare-para-realizar-a-comparacao-entre-dois-arrays-maratona-advpl-e-tl-039/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe039
Exemplo de fun��o que verifica onde tem diferen�as em um array
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o ArrayCompare
    Par�metros
        + Array de compara��o
        + Array que ser� comparado
        + Posi��o da diferen�a encontrada
    Retorno
        + .F. se houver diferen�as e .T. se for igual

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe039()
    Local aArea     := FWGetArea()
    Local aDados1   := {}
    Local aDados2   := {}
    Local nPosDif   := 0

    //Adiciona 3 informa��es no Array
    aAdd(aDados1, "Daniel Atilio")
    aAdd(aDados1, "Terminal de Informa��o")
    aAdd(aDados1, "Atilio Sistemas")

    //Adiciona 3 informa��es no segundo Array
    aAdd(aDados2, "Daniel Atilio")
    aAdd(aDados2, "Terminal de  Informa��o")
    aAdd(aDados2, "Atilio Sistemas")

    //Faz a compara��o das vari�veis
    If ArrayCompare(aDados1, aDados2, @nPosDif)
        FWAlertInfo("Os Arrays s�o iguais", "Sucesso")
    Else
        FWAlertInfo("Foi encontrada uma diferen�a no Array, na posi��o: " + cValToChar(nPosDif), "Diferen�a encontrada")
    EndIf

    FWRestArea(aArea)
Return
