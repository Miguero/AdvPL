/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/22/operador-menor-e-menor-igual-maratona-advpl-e-tl-014/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe014
Exemplo de como utilizar os operadores Menor e Menor/Igual (< e <=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe014()
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
