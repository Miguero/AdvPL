/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/13/separando-informacoes-de-um-telefone-com-gettel-fisgettel-e-nfegettel-maratona-advpl-e-tl-290/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe291
Busca a pasta tempor�ria para usar no sistema
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetTempPath
@obs 
    
    Fun��o GetTempPath
    Par�metros
        + lLocal     , L�gico        , Indica se retorna o diret�rio padr�o onde roda o smartclient (.T.) ou appserver (.F.)
        + lWeb       , L�gico        , Retorna o diret�rio web tempor�rio (para caso de rodar em navegador)
    Retorno
        + cRet       , Caractere     , Retorna o caminho da pasta tempor�ria

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe291()
    Local aArea      := FWGetArea()
    Local cPasta

    //Busca as informa��es do campo
    cPasta := GetTempPath()
    FWAlertInfo("A pasta �: " + cPasta, "Teste 1 GetTempPath")

    //Busca as informa��es do campo
    cPasta := GetTempPath(.F.)
    FWAlertInfo("A pasta �: " + cPasta, "Teste 2 GetTempPath")

    FWRestArea(aArea)
Return
