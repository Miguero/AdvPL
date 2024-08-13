/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/07/buscando-o-primeiro-e-o-ultimo-elemento-de-um-array-com-getmin-e-getmax-maratona-advpl-e-tl-278/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe279
Busca conte�do de par�metros
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815002 e https://tdn.totvs.com/pages/releaseview.action?pageId=24347112
@obs 
    
    Fun��o GetMV
    Par�metros
        + cMv_par       , Caractere     , Nome do par�metro
        + lConsulta     , L�gico        , Se .T. e o par�metro n�o existir pega o valor do xDefault
        + xDefault      , Indefinido    , Valor default do par�metro caso n�o exista
    Retorno
        + xConteudo     , Indefinido    , Retorna o conte�do do par�metro encontrado na SX6

    Fun��o SuperGetMV
    Par�metros
        + Parametro     , Caractere     , Nome do par�metro
        + lHelp         , L�gico        , Se .T. ser� exibido uma mensagem se o par�metro n�o existir
        + cPadrao       , Indefinido    , Valor default do par�metro caso n�o exista
        + Filial        , Caractere     , C�digo da filial onde ser� buscado o par�metro
    Retorno
        Retorna o conte�do do par�metro encontrado na SX6

    Obs.: O SuperGetMV � mais perform�tico do que o GetMV - https://tdn.totvs.com/display/public/framework/Desempenho+SuperGetMV+x+GetMV

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe279()
    Local aArea      := FWGetArea()
    Local cConteudo  := ""

    //Se o par�metro existir na base, pega o conte�do dele
    If FWSX6Util():ExistsParam("MV_X_PARAM")
        cConteudo := GetMV("MV_X_PARAM")
    EndIf

    //Pegando com SuperGetMV
    cConteudo := SuperGetMV("MV_X_PARAM", .F., "CONTEUDO DEFAULT")

    //Exibe uma mensagem
    FWAlertInfo("O conte�do do par�metro �: " + cConteudo, "Teste GetMV e SuperGetMV")

    FWRestArea(aArea)
Return
