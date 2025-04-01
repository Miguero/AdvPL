/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte12
Exemplo de como utilizar os operadores de exponencia��o ** e ^ (eles tamb�m funcionam com atribui��o **= e ^=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte12()
    Local aArea   := FWGetArea()
    Local nVar1   := 2
    Local nVar2   := 5
    Local nResult := 0

    //Faz a exponencia��o de um pelo outro (2 * 2 * 2 * 2 * 2)
    nResult := nVar1 ** nVar2
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Exponencia��o / Potencia��o")

    //Faz a multiplica��o direto pela atribui��o (5 * 5)
    nResult := nVar2 ^ nVar1
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Exponencia��o / Potencia��o")

    FWRestArea(aArea)
Return
