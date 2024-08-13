/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/15/copiando-arquivos-entre-servidor-e-estacao-usando-cpys2t-e-cpyt2s-maratona-advpl-e-tl-099/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe099
Realiza a c�pia de arquivo entre servidor (Protheus Data) e terminal (Smartclient)
@type Function
@author Atilio
@since 11/12/2022
@see https://tdn.totvs.com/display/tec/CpyS2T e https://tdn.totvs.com/display/tec/CpyT2S
@obs 
    Fun��o CpyS2T
    Par�metros
        + cFile         , Caractere    , Nome do arquivo na Protheus Data
        + cFolder       , Caractere    , Indica a pasta destino na esta��o
        + lCompress     , L�gico       , Se .T. o arquivo ser� compactado antes de fazer a c�pia
        + lChangeCase   , L�gico       , Se .T. o nome do arquivo ser� convertido tudo para min�sculo
    Retorno
        + lRet          , L�gico       , .T. se a c�pia foi executada com sucesso ou .F. se n�o

    Fun��o CpyT2S
    Par�metros
        + cFile         , Caractere    , Nome do arquivo na esta��o
        + cFolder       , Caractere    , Indica a pasta destino na Protheus Data
        + lCompress     , L�gico       , Se .T. o arquivo ser� compactado antes de fazer a c�pia
        + lChangeCase   , L�gico       , Se .T. o nome do arquivo ser� convertido tudo para min�sculo
    Retorno
        + lRet          , L�gico       , .T. se a c�pia foi executada com sucesso ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe099()
    Local aArea     := FWGetArea()
    Local cOrigem   := ""
    Local cDestino  := ""

    //Realiza a c�pia do servidor para a esta��o
    cOrigem   := "\x_logs\log_auto.txt"
    cDestino  := "C:\spool\"
    CpyS2T(cOrigem, cDestino)

    //Realiza a c�pia da esta��o para o servidor
    cOrigem   := "C:\spool\tst.txt"
    cDestino  := "\x_logs\"
    CpyT2S(cOrigem, cDestino)

    FWRestArea(aArea)
Return
