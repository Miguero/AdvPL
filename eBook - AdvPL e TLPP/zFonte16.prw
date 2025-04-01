/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte16
Exemplo de como utilizar os operadores de divis�o e divis�o com atribui��o / e /=
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte16()
    Local aArea   := FWGetArea()
    Local nResult := 0

    //Faz a divis�o de um pelo outro
    nResult := 100 / 2
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Divis�o")

    //Faz a divis�o direto pela atribui��o
    nResult /= 5
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Divis�o")

    FWRestArea(aArea)
Return
