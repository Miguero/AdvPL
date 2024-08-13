/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/20/pegando-informacoes-de-indices-com-as-indexkey-e-indexord-maratona-advpl-e-tl-305/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe305
Retorna o dados de um �ndice do Protheus
@type Function
@author Atilio
@since 22/02/2023
@see https://tdn.totvs.com/display/tec/IndexKey e https://tdn.totvs.com/display/tec/IndexOrd
@obs 

    Fun��o IndexKey
    Par�metros
        + nOrdem        , Num�rico   , N�mero do �ndice do Alias sendo que a partir da letra A no configurador passa a ser 10 (ent�o B � 11, C � 12, D � 13 e assim por diante)
    Retorno
        + cRet          , Caractere  , Conte�do do �ndice com os campos

    Fun��o IndexOrd
    Par�metros
        N�o possui par�metros
    Retorno
        + nOrd          , Num�rico   , N�mero do �ndice do Alias sendo que a partir da letra A no configurador passa a ser 10 (ent�o B � 11, C � 12, D � 13 e assim por diante)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe305()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Abre a tabela de produtos e posiciona num �ndice
    DbSelectArea("SB1")
    SB1->(DbSetOrder(5))

    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste IndexKey e IndexOrd")

    FWRestArea(aArea)
Return
