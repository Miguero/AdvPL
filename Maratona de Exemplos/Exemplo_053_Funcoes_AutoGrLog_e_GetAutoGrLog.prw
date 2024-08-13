/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/30/manipular-e-mostrar-logs-com-as-funcoes-autogrlog-e-getautogrlog-maratona-advpl-e-tl-053/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe053
Exemplo de fun��o para montar o "MostraErro" e para buscar a mensagem
@type Function
@author Atilio
@since 05/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815089 e https://tdn.totvs.com/pages/releaseview.action?pageId=6815090
@obs 
    Fun��o AutoGrLog 
    Par�metros
        + cText      , Caractere  , Texto que ser� gravado dentro do log do MostraErro

    Fun��o GetAutoGRLog
    Retorno
        + aRet       , Array      , Array com as linhas das mensagens do log do MostraErro
    Observa��o: s� � poss�vel usar se a vari�vel lAutoErrNoFile estiver declarada como Private

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe053()
    Local aArea            := FWGetArea()
    Local aRespos          := {}
    Local nAtual           := 0
    Local cMsg             := ""
    Private lAutoErrNoFile := .F.

    //Exemplo 1
    //Montando a mensagem para exibir no MostraErro
    lAutoErrNoFile := .F.
    AutoGrLog("Houve uma falha - ID #01!")
    AutoGrLog("As tabelas n�o estavam posicionadas no momento do processamento da rotina.")
    AutoGrLog("Contate o administrador")
    MostraErro()

    //Exemplo 2
    //Agora monta uma mensagem, s� que ao inv�s de exibir, ser� gravado em um array
    lAutoErrNoFile := .T.
    AutoGrLog("Houve uma falha - ID #02!")
    AutoGrLog("As tabelas n�o estavam posicionadas no momento do processamento da rotina.")
    AutoGrLog("Contate o administrador")
    aRespos := GetAutoGRLog()

    //Percorre todas as linhas do log e salva num arquivo txt
    For nAtual := 1 To Len(aRespos)
        cMsg += aRespos[nAtual] + CRLF
    Next
    MemoWrite("\x_logs\log_auto.txt", cMsg)

    FWRestArea(aArea)
Return
