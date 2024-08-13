/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/26/operadores-de-diferenca-maratona-advpl-e-tl-018/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe016
Exemplo de como utilizar os operadores de diferen�a (<> ou # ou !=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe018()
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
