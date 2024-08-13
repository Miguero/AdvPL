/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/31/tela-para-selecionar-uma-cor-usando-a-funcao-colortriangle-maratona-advpl-e-tl-084/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe084
Exemplo de como abrir uma dialog com sele��o de cores
@type Function
@author Atilio
@since 09/12/2022
@obs 
    Fun��o ColorTriangle
    Par�metros
        + Cor inicial (por padr�o vem preto = 0)
    Retorno
        + Cor escolhida pelo usu�rio

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe084()
    Local aArea     := FWGetArea()
    Local nCor      := 0

    //Abre a tela para sele��o de cores e depois mostra qual o usu�rio escolheu
    nCor := ColorTriangle()
    FWAlertSuccess("A cor escolhida pelo usu�rio foi: " + cValToChar(nCor), "Teste ColorTriangle")

    FWRestArea(aArea)
Return
