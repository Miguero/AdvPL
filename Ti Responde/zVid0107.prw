/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/12/12/como-pegar-o-nome-do-banco-de-dados-via-codigo-fonte-ti-responde-0107/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} zVid0107
Fun��o demonstrando em como buscar o nome da base de dados
@type user function
@author Atilio
@since 22/01/2024
/*/

User Function zVid0107()
    Local aArea       := FWGetArea()
    Local cNomeBase   := ""
    Local cStrError   := "ERROR"
    Local cPasso      := "1"
    Local cIniFile    := GetAdv97()

    /*
        Passo 1 vai ser verificar se tem a se��o DbAccess, que fica separado a informa��o do ambiente, exemplo (dentro do appserver.ini):

        [DBAccess]
        DataBase=MSSQL
        Server=192.168.x.x
        ALIAS=NOME_DA_BASE
        Port=7890
    */
    cNomeBase := GetPvProfString("DbAccess", "Alias", cStrError, cIniFile)

    /*
        Passo 2 se n�o encontrou ou deu erro, ai vamos buscar novamente mas agora ao inv�s de "DbAccess" vamos usar a se��o "TopConnect"
    */
    If Empty(cNomeBase) .Or. cNomeBase == cStrError
        cNomeBase := GetPvProfString("TopConnect", "Alias", cStrError, cIniFile)
        cPasso    := "2"
    EndIf

    /*
        Passo 3 se n�o encontrou ou deu erro, ai vamos buscar novamente mas agora ao inv�s de "TopConnect" vamos usar a se��o "TotvsDBAccess"
    */
    If Empty(cNomeBase) .Or. cNomeBase == cStrError
        cNomeBase := GetPvProfString("TotvsDBAccess", "Alias", cStrError, cIniFile)
        cPasso    := "3"
    EndIf

    /*
        Passo 4, se mesmo assim n�o encontrou, vamos buscar direto do ambiente
    */
    If Empty(cNomeBase) .Or. cNomeBase == cStrError
        cNomeBase := GetSrvProfString("DBAlias", cStrError)
        cPasso    := "4"
    EndIf

    //Mostra o nome encontrado
    FWAlertInfo("Nome encontrado �: " + cNomeBase, "Passo " + cPasso)

    FWRestArea(aArea)
Return
