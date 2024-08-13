/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/22/buscando-o-saldo-de-um-lote-de-produto-com-a-sb8saldo-maratona-advpl-e-tl-431/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe430
Faz um backup de vari�veis em mem�ria (aCols, aHeader, INCLUI, ALTERA, MV_PAR**, cCadastro, etc)
@type Function
@author Atilio
@since 29/03/2023
@obs 

    Fun��o SaveInter
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Fun��o n�o tem retorno

    Fun��o RestInter
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe430()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Altera vari�veis do Protheus antes de fazer o backup
    cCadastro := "Teste - Antes de fazer o backup"
    INCLUI    := .T.
    MV_PAR01  := "aaa , bbb"
    MV_PAR60  := "daniel"

    //Faz um backup das vari�veis do Protheus em mem�ria
    SaveInter()



    //Altera as vari�veis s� pra fazer um teste
    cCadastro := "Teste - Depois de ter feito o Backup"
    INCLUI    := .F.
    MV_PAR01  := "xxx , yyy"
    MV_PAR60  := "atilio"

    //Restaura o backup das vari�veis do Protheus em mem�ria
    RestInter()



    //Agora mostra as 3 vari�veis como elas est�o ap�s voltar o backup
    cMensagem := "cCadastro: " + cCadastro + CRLF
    cMensagem += "INCLUI: " + cValToChar(INCLUI) + CRLF
    cMensagem += "MV_PAR01: " + MV_PAR01 + CRLF
    cMensagem += "MV_PAR60: " + MV_PAR60
    FWAlertInfo(cMensagem, "Teste SaveInter e RestInter")

    FWRestArea(aArea)
Return
