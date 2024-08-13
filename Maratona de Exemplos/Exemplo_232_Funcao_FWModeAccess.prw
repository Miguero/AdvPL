/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/13/buscando-o-modo-de-compartilhamento-de-uma-tabela-com-fwmodeaccess-maratona-advpl-e-tl-232/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe232
Retorna o modo de compartilhamento de uma tabela
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWModeAccess+-+Retorna+modo+de+compartilhamento
@obs 

    Fun��o FWModeAccess
    Par�metros
        + cAlias         , Caractere  , Alias da Tabela
        + nLevel         , Num�rico   , Qual ser� o n�vel a ser avaliado (1=Empresa;2=Unidade De Neg�cio;3=Filial)
        + cGrpCompany    , Caractere  , Indica o grupo de empresas a ser avaliado
    Retorno
        + cMode          , Caractere  , Tipo do Compartilhamento da tabela


    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe232()
    Local aArea     := FWGetArea()
    Local cTexto    := ""

    //Pega os 3 tipos de compartilhamento de uma tabela
    cTexto += "Empresa: "   + FWModeAccess("SB1", 1) + CRLF
    cTexto += "Unid. Neg: " + FWModeAccess("SB1", 2) + CRLF
    cTexto += "Filial: "    + FWModeAccess("SB1", 3)
    
    //Exibe a mensagem
    FWAlertInfo(cTexto, "Teste FWModeAccess")

    FWRestArea(aArea)
Return
