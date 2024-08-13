/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/07/manipulando-dados-da-sx5-com-as-funcoes-fwgetsx5-e-fwputsx5-maratona-advpl-e-tl-221/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe220
Faz um backup da �rea em mem�ria e depois volta
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FwGetArea , https://tdn.totvs.com/display/public/framework/FwRestArea , https://tdn.totvs.com/pages/releaseview.action?pageId=24346925, https://tdn.totvs.com/pages/releaseview.action?pageId=24347058
@obs 

    Fun��o FWGetArea
    Par�metros
        N�o possui par�metros
    Retorno
        Retorna um array com as posi��es [1] Alias ; [2] �ndice Usado ; [3] Registro posicionado

    Fun��o FWRestArea
    Par�metros
        + aArea         , Array       , Array com as posi��es igual armazenadas na FWGetArea
    Retorno
        N�o tem retorno

    Fun��o GetArea
    Par�metros
        N�o possui par�metros
    Retorno
        Retorna um array com as posi��es [1] Alias ; [2] �ndice Usado ; [3] Registro posicionado

    Fun��o RestArea
    Par�metros
        + aArea         , Array       , Array com as posi��es igual armazenadas na GetArea
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe220()
    Local aArea    := FWGetArea()
    Local aAreaSB1 := SB1->(FWGetArea())
     
    //Aqui suas customiza��es
     
    FWRestArea(aAreaSB1)
    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function A010TOK
Ponto de entrada ao clicar no bot�o Ok no Cadastro de Produtos
@type  Function
@author Atilio
@since 20/02/2023
/*/

User Function A010TOK()
    Local lRet     := .T.

    //Aciona o exemplo do GetArea e RestArea
    u_zExe220()

Return lRet
