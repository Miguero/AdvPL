/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte19
Exemplo de como utilizar os operadores Maior e Maior/Igual (> e >=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte19()
    Local aArea   := FWGetArea()
    Local nVar1   := 2
    Local nVar2   := 2

    //Somente se a vari�vel for menor que a da direita
    If nVar1 > nVar2
        FWAlertInfo("A nVar1 � maior que a nVar2", "Primeiro teste")
    EndIf

    //Somente se a vari�vel for menor ou igual a da direita
    If nVar1 >= nVar2
        FWAlertInfo("A nVar1 � maior ou igual a nVar2", "Segundo teste")
    EndIf

    FWRestArea(aArea)
Return
