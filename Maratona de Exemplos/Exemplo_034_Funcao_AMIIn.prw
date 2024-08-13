/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/11/funcao-amiin-para-validar-utilizacao-do-modulo-maratona-advpl-e-tl-034/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe034
Exemplo de fun��o que verifica se a rotina est� sendo chamada com licen�a de uso para o m�dulo de origem
@type Function
@author Atilio
@since 28/11/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=555856401
@obs 
    Fun��o AMIIn
    Par�metros
        + nMd01  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd02  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd03  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd04  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd05  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd06  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd07  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd08  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd09  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd10  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd11  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd12  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd13  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd14  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd15  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd16  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd17  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd18  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd19  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd20  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd21  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd22  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd23  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd24  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
        + nMd25  (Opcional), Num�rico, N�mero do m�dulo a ser conferido
    Retorno
        + Se o usu�rio tem acesso retorna .T. do contr�rio retorna .F.

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe034()
    Local aArea     := FWGetArea()

    //Se tiver licen�a de acesso do Compras (2), Estoque Custos (4), Faturamento (5), Financeiro (6)
    If AMIIn(2, 4, 5, 6)
        FWAlertInfo("Caiu na primeira condi��o", "Primeiro teste")
    EndIf

    FWRestArea(aArea)
Return
