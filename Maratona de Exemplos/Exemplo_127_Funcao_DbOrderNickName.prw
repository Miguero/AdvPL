/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/13/ordenando-uma-tabela-por-um-apelido-de-indice-com-dbordernickname-maratona-advpl-e-tl-127/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe127
Ordena uma tabela conforme o apelido (nickname) passado
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBOrderNickname
@obs 

    Fun��o DBOrderNickname
    Par�metros
        + cApelido     , Caractere     , Apelido que ser� buscado na tabela SIX para ordenar nosso alias
    Retorno
        + lRet         , L�gico        , .T. se conseguiu encontrar e ordenar ou .F. se houve alguma falha

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe127()
    Local aArea      := FWGetArea()
    Local cNickTab   := "LOTEPLS"
    Local cMensagem  := ""

    //Abre o cadastro de pedidos de compras
    DbSelectArea("SC7")
    
    //Tenta ordenar conforme o apelido
    If SC7->(DbOrderNickName(cNickTab))
        //Monta a mensagem e exibe
        cMensagem += "Foi poss�vel ordenar pelo apelido -" + cNickTab + "-" + CRLF + CRLF
        cMensagem += "O �ndice num�rico �: " + cValToChar(SC7->(IndexOrd())) + CRLF
        cMensagem += "E a chave do �ndice �: " + SC7->(IndexKey(IndexOrd())) + CRLF
        FWAlertInfo(cMensagem, "Teste DbOrderNickName")

    Else
        FWAlertError("Apelido n�o encontrado!", "Falha DbOrderNickName")
    EndIf

    FWRestArea(aArea)
Return
