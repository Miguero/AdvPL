/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/23/buscando-informacoes-de-parametros-com-a-fwsx6util-maratona-advpl-e-tl-252/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe252
Classe para buscar informa��es da SX6 (Par�metros)
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/public/framework/FWSX6Util
@obs 
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe252()
    Local aArea      := FWGetArea()
    Local cConteudo  := ""

    //Se o par�metro existir na base, pega o conte�do dele
    If FWSX6Util():ExistsParam("MV_ESTNEG")
        cConteudo := GetMV("MV_ESTNEG")

    //Sen�o, atribui como n�o encontrado
    Else
        cConteudo := "NAO ENCONTRADO!"
    EndIf

    //Exibe uma mensagem
    FWAlertInfo("O conte�do do par�metro �: " + cConteudo, "Teste FWSX6Util")

    FWRestArea(aArea)
Return
