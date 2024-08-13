/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/22/ordenando-os-elementos-de-um-array-com-a-funcao-asort-maratona-advpl-e-tl-045/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe045
Exemplo de fun��o que faz a ordena��o de um Array
@type Function
@author Atilio
@since 29/11/2022
@see https://tdn.totvs.com/display/tec/ASort
@obs 
    Fun��o aScan
    Par�metros
        + aVetor    , Array             , Indica o array que ser� ordenado
        + nInicio   , Num�rico          , Indica o primeiro elemento que ser� colocado em ordem (caso n�o seja informado ser� desde a posi��o 1)
        + nCont     , Num�rico          , Indica a quantidade de elementos que ser�o ordenados a partir do nInicio (caso n�o seja informado ser� considerado o array inteiro)
        + bOrdem    , Bloco de C�digo   , Bloco de c�digo que realizar� a ordena��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe045()
    Local aArea       := FWGetArea()
    Local aDadosMono  := {}
    Local aDadosMult  := {}
    Local nPos        := 0
    Local cMsg        := ""

    //Adicionando elementos no Array
    aAdd(aDadosMono, "Daniel")
    aAdd(aDadosMono, "Atilio")
    aAdd(aDadosMono, "Jo�o")
    aAdd(aDadosMono, "Maria")
    aAdd(aDadosMono, "Jos�")

    //Ordena o Array por Nome
    aSort(aDadosMono)

    //Percorre para compor a mensagem
    cMsg := ""
    For nPos := 1 To Len(aDadosMono)
        cMsg += "Nome: " + aDadosMono[nPos] + CRLF
    Next
    FWAlertInfo(cMsg, "Ordena��o Simples")


    // ---


    //Adicionando elementos no Array (c�digo, nome e idade)
    aAdd(aDadosMult, {"0001", "Daniel",   23})
    aAdd(aDadosMult, {"0002", "Atilio",   33})
    aAdd(aDadosMult, {"0003", "Jo�o",     43})
    aAdd(aDadosMult, {"0004", "Maria",    53})
    aAdd(aDadosMult, {"0005", "Jos�",     63})
    
    //Ordena o Array por Nome (Array multidimensional) - Crescente usa < e Decrescente usa >
    aSort(aDadosMult, , , {|x, y| x[2] < y[2]})
    
    //Percorre para compor a mensagem
    cMsg := ""
    For nPos := 1 To Len(aDadosMult)
        cMsg += aDadosMult[nPos][2] + ", c�digo " + aDadosMult[nPos][1] + CRLF
    Next
    FWAlertInfo(cMsg, "Ordena��o Multidimensional")

    FWRestArea(aArea)
Return
