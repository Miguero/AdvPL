/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/02/criando-graficos-atraves-da-fwchartfactory-maratona-advpl-e-tl-210/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe211
Exemplo de fun��o que traz o c�digo da empresa logada
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815128
@obs 
    Fun��o FWCodEmp
    Par�metros
        + cAlias    , Caractere , Alias da tabela que ser� validada
    Retorno
        + cEmp      , Caractere , C�digo da Empresa

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe211()
    Local aArea    := FWGetArea()
    Local cEmprLog := ""
    Local cFiliLog := ""
    Local cMensag  := ""

    //Pega a empresa logada
    cEmprLog := FWCodEmp()

    //Pega a filial logada
    cFiliLog := FWCodFil()

    //Exibe uma mensagem
    cMensag := "Estou logado na empresa '" + cEmprLog + "' e na filial '" + cFiliLog + "'!"
    FWAlertInfo(cMensag, "Teste de FWCodEmp")

    FWRestArea(aArea)
Return
