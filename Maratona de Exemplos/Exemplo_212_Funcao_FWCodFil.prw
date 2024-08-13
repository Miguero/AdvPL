/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/03/buscando-o-codigo-da-filial-logada-com-fwcodfil-maratona-advpl-e-tl-212/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe212
Exemplo de fun��o que traz o c�digo da filial logada
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815110
@obs 
    Fun��o FWCodFil
    Par�metros
        + cGrpCompany  , Caractere , Indica o grupo de empresas a ser validado
        + cEmpUDFil    , Caractere , Indica a empresa; unidade de neg�cio e filial
    Retorno
        + cCodFil   , Caractere , C�digo da Filial

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe212()
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
    FWAlertInfo(cMensag, "Teste de FWCodFil")

    FWRestArea(aArea)
Return
