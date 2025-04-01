/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte17
Exemplo de como utilizar o operador % (Percentual) para pegar o resto de uma divis�o
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte17()
    Local aArea   := FWGetArea()
    Local nResto1 := 10 % 3
    Local nResto2 := 9 % 3
    Local nValor  := 41

    //Mostra os resultados
    FWAlertInfo("nResto1: " + cValToChar(nResto1) + ", nResto2: " + cValToChar(nResto2), "Restos de divis�es")

    //Realiza o teste, se o resto da divis�o por 2 for 0
    If nValor % 2 == 0
        FWAlertInfo("O valor � -PAR-", "Resultado")
    Else
        FWAlertInfo("O valor � -�MPAR-", "Resultado")
    EndIf

    FWRestArea(aArea)
Return
