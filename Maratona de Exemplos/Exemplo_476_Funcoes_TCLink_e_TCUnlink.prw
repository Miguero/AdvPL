/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/14/conectando-em-outra-base-de-dados-com-tclink-e-tcunlink-maratona-advpl-e-tl-476/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe476
Realiza uma conex�o com outra base de dados, configurada no DbAccess
@type Function
@author Atilio
@since 03/04/2023
@see https://tdn.totvs.com/display/tec/TCLink e https://tdn.totvs.com/display/tec/TCUnlink
@obs 

    TCLink
    Par�metros
        + cConn       , Caractere      , Indica o nome da conex�o usada no DbAccess
        + cServerAddr , Caractere      , Indica o IP do servidor do banco de dados
        + nPort       , Num�rico       , Indica o n�mero da porta de conex�o com o DbAccess
    Retorno
        + nHwnd       , Num�rico       , Retorna um n�mero de handle que ser� o identificador da conex�o

    TCUnlink
    Par�metros
        + nHandle     , Num�rico       , Indica o n�mero do handle que ser� desconectado
        + lVerbose    , L�gico         , Se .T. ir� mensagens de warning no console.log
    Retorno
        + lRet        , L�gico         , Retorna .T. se a conex�o foi encerrada com sucesso ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe476()
    Local aArea := FWGetArea()
    Local cBcoDados:= "MSSQL/TESTE"      //Conex�o no DbAccess com a outra base de Dados
    Local cServer  := "127.0.0.1"        //Servidor que est� configurado o DbAccess
    Local nPorta   := 7890               //Porta da conex�o do DbAccess
    Local nHandle  := 0                  //Ponteiro que armazenar� a conex�o
    Local cQuery   := ""
    
    //Conecta com Banco
    nHandle  := TcLink(cBcoDados, cServer, nPorta)
    
    //Se houve algum erro na conex�o
    If nHandle < 0
        MsgInfo("N�o foi poss�vel conectar! Erro: " + cValToChar(nHandle), "Aten��o")
        
    //Sen�o, insere um registro em uma tabela (voc� pode fazer outras opera��es como SELECT, UPDATE, etc)
    Else 
        cQuery += " INSERT INTO TABELA_XYZ " + CRLF
        cQuery += " (NOME, URL_SITE, PROFISSAO)  " + CRLF
        cQuery += " VALUES ('Teste autom�tico', 'terminaldeinformacao.com', 'observa��o teste " + Time() + "') " + CRLF

        //Se houve falha, mostra uma mensagem
        If TCSqlExec(cQuery) < 0
            FWAlertInfo("Falha: " + TCSQLError(), "Teste TCLink e TCUnlink")
        Else
            FWAlertSuccess("Registro incluido com sucesso", "Teste TCLink e TCUnlink")
        EndIf
    Endif
    
    //Desconecta
    TCUnlink(nHandle)

    FWRestArea(aArea)
Return
