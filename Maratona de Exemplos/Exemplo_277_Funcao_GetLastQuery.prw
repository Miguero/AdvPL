/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/06/fazendo-backup-de-atalhos-e-restaurando-com-getkeys-e-restkeys-maratona-advpl-e-tl-276/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe277
Retorna um array com a �ltima query executada via Embedded
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/public/framework/Embedded+SQL
@obs 

    Fun��o GetLastQuery
    Par�metros
        N�o possui par�metros
    Retorno
        Retorna um array com as posi��es [1] Alias aberto; [2] Query executada; [3] Campos convertidos na query; [4] Se foi ou n�o utilizado ChangeQuery; [5] Tempo que demorou para executar
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe277()
    Local aArea  := FWGetArea()
    Local cTipos := "PI;PA;"
    Local cWhere := "%B1_TIPO IN " + FormatIn(cTipos, ";") + " AND B1_LOCPAD = '01'%"
    Local aQuery := {}
    
    //Construindo a consulta
    BeginSql Alias "SQL_SB1"

        //Definindo campos com tipo espec�fico
        COLUMN B1_UCOM AS DATE

        //Definindo a query que ser� executada    
        SELECT    
            B1_COD,
            B1_DESC,
            B1_UCOM 
        FROM
            %table:SB1% SB1 
        WHERE
            B1_FILIAL  = %xFilial:SB1%
            AND B1_MSBLQL != '1'
            AND %Exp:cWhere%
            AND SB1.%notDel%
    EndSql
    
    //Exibe a query executada
    aQuery := GetLastQuery()
    ShowLog(aQuery[2])
    SQL_SB1->(DbCloseArea())

    FWRestArea(aArea)
Return
