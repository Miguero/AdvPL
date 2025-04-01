/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte25
Exemplo de fun��o que faz a ordena��o de um Array
@type Function
@author Atilio
@since 29/11/2022
@see https://tdn.totvs.com/display/tec/ASort
/*/

User Function zFonte25()
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
