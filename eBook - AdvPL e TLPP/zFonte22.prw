/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte22
Exemplo de como utilizar os operadores .And. e .Or. nos testes
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte22()
    Local aArea   := FWGetArea()
    Local nVar1   := 2
    Local nVar2   := 2

    //Somente se a primeira condi��o E a segunda forem verdadeiras
    If (nVar1 == nVar2) .And. fTstFunc()
        FWAlertInfo("Resultado � verdadeiro", "Teste com .And.")
    EndIf

    //Se a primeira condi��o OU a segunda for verdadeira
    If fTstFunc() .Or. FWAlertYesNo("Pergunta de Teste", "Continua?")
        FWAlertInfo("Resultado � verdadeiro", "Teste com .Or.")
    EndIf

    FWRestArea(aArea)
Return

Static Function fTstFunc()
    Local lRet := .T.
Return lRet
