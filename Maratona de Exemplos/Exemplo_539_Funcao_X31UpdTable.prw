/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/15/buscando-a-chave-unica-da-tabela-com-x2unique2index-e-getsx2unico-maratona-advpl-e-tl-538/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe539
Atualiza uma tabela no SQL conforme as altera��es nos dicion�rios (SX2, SX3 e SIX)
@type Function
@author Atilio
@since 07/04/2023
@obs 

    Fun��o X31UpdTable
    Par�metros
        Recebe o alias a ser atualizado
    Retorno
        Fun��o n�o tem retorno



    A partir da LIB 20221010_P12, � exibido uma mensagem de que essa fun��o ser� descontinuada em breve
    Saiba mais em: https://tdn.totvs.com/pages/releaseview.action?pageId=698632582


    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe539()
    Local aArea      := FWGetArea()
    Local cTabAlias  := ""

    //Abre um input pro usu�rio digitar a tabela
    cTabAlias := FWInputBox("Insira o alias da tabela")
    cTabAlias := Alltrim(cTabAlias)

    //Caso a vari�vel foi preenchida, seja tamanho 3 e exista no dicion�rio, ai prossegue
    If ! Empty(cTabAlias) .And. Len(cTabAlias) == 3 .And. ExisteSX2(cTabAlias)

        //Limpa as mensagens que haja em mem�ria do X31
        __SetX31Mode(.F.)

        //Tenta executar a atualiza��o da tabela (cria��o e altera��o de �ndices e campos)
        X31UpdTable(cTabAlias)

        //Se houve algum erro, mostra mensagem
        If __GetX31Error()
            ShowLog("Houve um erro na atualiza��o da tabela '" + cTabAlias + "':" + CRLF + CRLF + __GetX31Trace())
        Else
            FWAlertSuccess("Sucesso na atualiza��o da tabela '" + cTabAlias + "'", "Sucesso")
        EndIf

    EndIf

    FWRestArea(aArea)
Return
