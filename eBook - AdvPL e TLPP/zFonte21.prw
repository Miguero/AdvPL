/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte21
Exemplo de como utilizar os operadores de nega��o ! e .Not.
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte21()
    Local aArea   := FWGetArea()
    Local nValorA := 0
    Local nValorB := 1

    //Se A NEGA��O da condi��o for verdadeira
    If ! nValorA == nValorB
        FWAlertInfo("Mensagem de teste", "Primeiro If")
    EndIf

    //Se A NEGA��O da condi��o for verdadeira
    If .Not. nValorA == nValorB
        FWAlertInfo("Mensagem de teste", "Segundo If")
    EndIf

    FWRestArea(aArea)
Return
