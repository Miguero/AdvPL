/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/21/redimensionando-um-array-com-a-funcao-asize-maratona-advpl-e-tl-044/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe044
Exemplo de fun��o que redimensiona o tamanho de um Array (geralmente usado junto de aDel e aIns)
@type Function
@author Atilio
@since 29/11/2022
@see https://tdn.totvs.com/display/tec/ASize
@obs 
    Fun��o aScan
    Par�metros
        + aDestino  , Array      , Indica o array que ter� o tamanho redimensionado
        + nTamanho  , Num�rico   , Indica o novo tamanho do Array

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe044()
    Local aArea      := FWGetArea()
    Local aNomes    := {}

    //Adicionando os nomes
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    
    //Deleta o elemento da posi��o 2, vai ficar como: ["Daniel", "Maria", Nil]
    aDel(aNomes, 2)

    //Redimensiona o Array, diminuindo uma posi��o que estava como Nil
    aSize(aNomes, Len(aNomes) - 1)

    //Exibe agora o que est� na posi��o 2
    FWAlertInfo("Tamanho do Array:" + cValToChar(Len(aNomes)), "Exemplo de aSize")

    FWRestArea(aArea)
Return
