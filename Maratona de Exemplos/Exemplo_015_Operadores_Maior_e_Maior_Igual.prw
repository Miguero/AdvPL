/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/23/operador-maior-e-maior-igual-maratona-advpl-e-tl-015/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe015
Exemplo de como utilizar os operadores Maior e Maior/Igual (> e >=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe015()
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
