/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/02/buscando-o-ip-com-a-funcao-getclientip-maratona-advpl-e-tl-268/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe268
Retorna o IP do servidor ou da esta��o
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetClientIP
@obs 

    Fun��o GetClientIP
    Par�metros
        + lClientSide    , L�gico           , Se .T. retorna o IP do SmartClient ; Se .F. retorna o IP do AppServer
    Retorno
        + cRet           , Caractere        , Retorna o IP conforme o lClientSide passado
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe268()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Busca a informa��o e exibe
    cMensagem := "Estou executando no seguinte IP: " + GetClientIP(.F.)
    FWAlertInfo(cMensagem, "Teste GetClientIP")

    FWRestArea(aArea)
Return
