/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte18
Exemplo de como utilizar os operadores Menor e Menor/Igual (< e <=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte18()
    Local aArea   := FWGetArea()
    Local nVar1   := 1
    Local nVar2   := 2

    //Somente se a vari�vel for menor que a da direita
    If nVar1 < nVar2
        FWAlertInfo("A nVar1 � menor que a nVar2", "Primeiro teste")
    EndIf

    //Somente se a vari�vel for menor ou igual a da direita
    If nVar1 <= nVar2
        FWAlertInfo("A nVar1 � menor ou igual a nVar2", "Segundo teste")
    EndIf

    FWRestArea(aArea)
Return
