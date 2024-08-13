/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/03/criando-uma-tabela-no-banco-com-a-fwdbcreate-maratona-advpl-e-tl-213/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe213
Exemplo de fun��o que cria uma tabela no banco de dados
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWDBCreate
@obs 
    Fun��o FWDBCreate
    Par�metros
        + cName         , Caractere , Nome da tabela que ser� criada
        + aStruct       , Array     , Array com a estrutura de campos (posi��es: [1] nome do campo; [2] tipo do campo; [3] tamanho do campo; [4] decimais do campo)
        + cDriver       , Caractere , Driver utilizado na cria��o da tabela
        + lRecnoAutoInc , L�gico    , .T. se define que usar� RecNo com auto incremento
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe213()
    Local aArea     := FWGetArea()
    Local cTableTmp := "PRODTMP"
    Local aStruct   := {}

    //Define os campos que ter�o na tabela
    aAdd(aStruct, {"CODIGO", "C",  6, 0})
    aAdd(aStruct, {"NOME",   "C", 50, 0})

    //Aciona a cria��o da tabela no Banco de Dados
    FWDBCreate(cTableTmp, aStruct, "TOPCONN", .T.)

    FWRestArea(aArea)
Return 
