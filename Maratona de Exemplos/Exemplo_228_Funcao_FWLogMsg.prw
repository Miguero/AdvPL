/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/11/abrindo-uma-tela-para-marcacao-de-registros-com-fwmarkbrowse-maratona-advpl-e-tl-229/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe228
Exibe uma mensagem no console.log do AppServer
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWLogMsg
@obs 

    Fun��o FWLogMsg
    Par�metros
        + cSeverity      , Caractere  , Informe a severidade da mensagem de log. As op��es poss�veis s�o: INFO, WARN, ERROR, FATAL, DEBUG
        + cTransactionId , Caractere  , Informe o Id de identifica��o da transa��o para opera��es correlatas. Informe "LAST" para o sistema assumir o mesmo id anterior
        + cGroup         , Caractere  , Informe o Id do agrupador de mensagem de Log
        + cCategory      , Caractere  , Informe o Id da categoria da mensagem
        + cStep          , Caractere  , Informe o Id do passo da mensagem
        + cMsgId         , Caractere  , Informe o Id do c�digo da mensagem
        + cMessage       , Caractere  , Informe a mensagem de log. Limitada � 10K
        + nMensure       , Num�rico   , Informe a uma unidade de medida da mensagem
        + nElapseTime    , Num�rico   , Informe o tempo decorrido da transa��o
        + aMessage       , Array      , Informe a mensagem de log em formato de Array - Ex: { {"Chave" ,"Valor"} }
    Retorno
        Fun��o n�o tem retorno


    Para o correto funcionamento, ative FWLOGMSG_DEBUG=1 no environment dentro do appserver.ini


    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe228()
    Local aArea     := FWGetArea()
    Local cTexto    := "Passei pela fun��o zExe228"

    //Exibe a mensagem no Console.log
    FWLogMsg(;
        "INFO",;    //cSeverity      - Informe a severidade da mensagem de log. As op��es poss�veis s�o: INFO, WARN, ERROR, FATAL, DEBUG
        ,;          //cTransactionId - Informe o Id de identifica��o da transa��o para opera��es correlatas. Informe "LAST" para o sistema assumir o mesmo id anterior
        "ZEXE228",; //cGroup         - Informe o Id do agrupador de mensagem de Log
        ,;          //cCategory      - Informe o Id da categoria da mensagem
        ,;          //cStep          - Informe o Id do passo da mensagem
        ,;          //cMsgId         - Informe o Id do c�digo da mensagem
        cTexto,;    //cMessage       - Informe a mensagem de log. Limitada � 10K
        ,;          //nMensure       - Informe a uma unidade de medida da mensagem
        ,;          //nElapseTime    - Informe o tempo decorrido da transa��o
        ;           //aMessage       - Informe a mensagem de log em formato de Array - Ex: { {"Chave" ,"Valor"} }
    ) 
    
    FWRestArea(aArea)
Return
