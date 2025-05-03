/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/04/17/como-manipular-uma-tabela-em-sqlite-via-advpl-ti-responde-0143/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"
 
/*/{Protheus.doc} User Function zVid0143
Exemplo de como manipular uma tabela em SQLITE via AdvPL
@type  Function
@author Atilio
@since 05/04/2024
@see https://tdn.totvs.com/display/tec/DBCreate
/*/

User Function zVid0143()
    Local aArea     := FWGetArea()
    Local cRDD      := "SQLITE_SYS"
    Local cAliasArq := GetNextAlias()
    Local cArquiAtu := "ATILIO" //vai ficar dentro do \db_sys\SYSTEM.db
    Local cMensagem := ""
    Local aStruct   := {}

    //Apaga a tabela caso ela j� exista
    DBSqlExec(cArquiAtu, 'DROP TABLE ATILIO', cRDD)

    //Define os campos que ter�o na tabela
    aAdd(aStruct, {"CODIGO", "C",  6, 0})
    aAdd(aStruct, {"NOME",   "C", 50, 0})

    //Aciona a cria��o da tabela caso n�o exista
    DBCreate(cArquiAtu, aStruct, cRDD)

    //Abre o arquivo CTREE
    DbUseArea(.T., cRDD, cArquiAtu, cAliasArq, .F., .F.)

    //Se deu certo abrir
    If Select(cAliasArq) > 0

        //Cria um registro de teste
        RecLock(cAliasArq, .T.)
            CODIGO := "C00001"
            NOME   := "Nome de Teste 123"
        (cAliasArq)->(MsUnlock())

        //Se tiver dados, exibe uma mensagem
        If ! (cAliasArq)->(EoF())
            cMensagem := "Arquivo " + cArquiAtu + " aberto com sucesso!" + CRLF + CRLF
            cMensagem += "Agora voc� pode fazer la�os de repeti��o e usar comandos como DbSkip." + CRLF + CRLF
            cMensagem += "Na primeira linha, tem essa informa��o: " + (cAliasArq)->NOME + CRLF
            ShowLog(cMensagem)

        //Sen�o, avisa que n�o encontrou informa��es
        Else
            FWAlertInfo("N�o tem dados!", "Arquivo: " + cArquiAtu)
        EndIf
    EndIf
    (cAliasArq)->(DbCloseArea())

    FWRestArea(aArea)
Return
