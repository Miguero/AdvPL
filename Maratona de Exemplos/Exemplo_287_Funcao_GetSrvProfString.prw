/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/11/buscando-o-tamanho-do-monitor-com-getscreenres-e-msadvsize-maratona-advpl-e-tl-286/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe287
Busca uma informa��o do appserver.ini
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetSrvProfString
@obs 
    
    Fun��o GetSrvProfString
    Par�metros
        + cChave      , Caractere       , Chave buscada do appserver.ini
        + cDefault    , Caractere       , Conte�do default caso n�o encontre a chave
    Retorno
        + cRet        , Caractere       , Retorna o conte�do da chave pesquisada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe287()
    Local aArea      := FWGetArea()
    Local cPasta     := ""

    //Busca uma informa��o dentro do appserver.ini
    cPasta := GetSrvProfString("startpath", "")

    //Exibe uma mensagem
    FWAlertInfo(cPasta, "Teste GetSrvProfString")

    FWRestArea(aArea)
Return
