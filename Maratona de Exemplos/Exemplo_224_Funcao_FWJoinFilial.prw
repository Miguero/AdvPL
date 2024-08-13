/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/09/lendo-os-campos-de-log-de-inclusao-e-alteracao-com-a-fwleuserlg-maratona-advpl-e-tl-225/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe224
Prepara o relacionamento entre duas tabelas conforme o compartilhamento delas na SX2
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWJoinFilial
@obs 

    Fun��o FWJoinFilial
    Par�metros
        + cAlias1       , Caractere   , Alias da primeira tabela
        + cAlias2       , Caractere   , Alias da segunda tabela
        + cTbAlias1     , Caractere   , Alias do SQL da primeira tabela
        + cTbAlias2     , Caractere   , Alias do SQL da segunda tabela
        + lPrefixo      , L�gico      , Informa se dever� utilizar o prefixo das tabelas
        + cDbMs         , Caractere   , Banco de Dados utilizado
        + lFilCompJoin  , L�gico      , Indica se ir� utilizar o campo filial na montagem do join
    Retorno
        + Retorna o relacionamento entre as tabelas no formato Caractere

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe224()
    Local aArea     := FWGetArea()
    Local cJoin     := ""

    //Monta um relacionamento simples entre duas tabelas
    cJoin := FWJoinFilial("SC5", "SC6")
    FWAlertInfo(cJoin, "Teste 1 FWJoinFilial")

    //Monta um relacionamento usando prefixo entre duas tabelas
    cJoin := FWJoinFilial("SB1", "SC6")
    FWAlertInfo(cJoin, "Teste 2 FWJoinFilial")

    //Monta um relacionamento dando nome entre duas tabelas
    cJoin := FWJoinFilial("SC5", "SC6", "SC5TST", "SC6TST",  .T., , .T.)
    FWAlertInfo(cJoin, "Teste 3 FWJoinFilial")

    FWRestArea(aArea)
Return
