/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/23/verificando-se-um-alias-esta-aberto-com-a-select-maratona-advpl-e-tl-433/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe433
Retorna o numero na mem�ria de um alias aberto
@type Function
@author Atilio
@since 30/03/2023
@see https://tdn.totvs.com/display/tec/Select
@obs 
    Fun��o Select
    Par�metros
        + cAlias      , Caractere     , Alias que ser� analisado
    Retorno
        + nRet        , Num�rico      , Retorna o n�mero encontrado da �rea de trabalho (workarea)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe433()
    Local aArea    := FWGetArea()
    Local cQuery   := ""

    //Abrindo uma tabela e mostrando com qual n�mero ela foi aberta    
    DbSelectArea("SB1")
    FWAlertInfo("O alias SB1 foi aberto com o seguinte n�mero: " + cValToChar(Select("SB1")), "Teste 1 - Select")

    //Exemplo 2, fechando um alias, antes de abrir novamente
    cQuery := " SELECT TOP 1 B1_COD, B1_DESC FROM " + RetSQLName("SB1") + " SB1 WHERE " + RetSQLCond("SB1")
    If Select('QRY_SB1') > 0
        FWAlertSuccess("Estava aberto o Alias QRY_SB1, ent�o foi fechado!", "Teste 2 - Select")
        QRY_SB1->(DbCloseArea())
    EndIf
    PLSQuery(cQuery, 'QRY_SB1')

    FWRestArea(aArea)
Return
