/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte20
Exemplo de como utilizar os operadores de diferen�a (<> ou # ou !=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte20()
    Local aArea   := FWGetArea()
    Local cVar1   := "Daniel"
    Local cVar2   := "Atilio"

    //Usando o sinal de menor/maior
    If cVar1 <> cVar2
        FWAlertInfo("Vari�veis s�o diferentes", "Primeiro If")
    EndIf

    //Usando sustenido
    If cVar1 # cVar2
        FWAlertInfo("Vari�veis s�o diferentes", "Segundo If")
    EndIf

    //Usando o diferente igual
    If cVar1 != cVar2
        FWAlertInfo("Vari�veis s�o diferentes", "Terceiro If")
    EndIf

    //Usando a NEGA��O DE EXATAMENTE igual
    If ! cVar1 == cVar2
        FWAlertInfo("Vari�veis s�o diferentes", "Quarto If")
    EndIf

    FWRestArea(aArea)
Return
