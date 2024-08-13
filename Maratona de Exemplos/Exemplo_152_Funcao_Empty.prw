/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/04/criando-uma-barra-com-botoes-usando-a-enchoicebar-maratona-advpl-e-tl-153/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe152
Verifica se um conte�do esta vazio
@type Function
@author Atilio
@since 18/12/2022
@see https://tdn.totvs.com/display/tec/Empty
@obs 
    Fun��o Empty
    Par�metros
        + xExp           , Indefinido   , Indica o valor que ser� validado
    Retorno
        + lRet           , L�gico       , Retorna .T. se o conte�do for vazio ou .F. se tiver dados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe152()
    Local aArea       := FWGetArea()
    Local aDados      := {}
    Local cNome       := Space(10)
    Local cNome2      := "Daniel"
    Local nValor      := 0
    Local dData       := sToD("")
    Local cVarTst     := Nil
    Local cMensagem   := ""

    //Monta a mensagem
    cMensagem += "aDados   : " + cValToChar(Empty(aDados   )) + CRLF
    cMensagem += "cNome    : " + cValToChar(Empty(cNome    )) + CRLF
    cMensagem += "cNome2   : " + cValToChar(Empty(cNome2   )) + CRLF
    cMensagem += "nValor   : " + cValToChar(Empty(nValor   )) + CRLF
    cMensagem += "dData    : " + cValToChar(Empty(dData    )) + CRLF
    cMensagem += "cVarTst  : " + cValToChar(Empty(cVarTst  )) + CRLF
    FWAlertInfo(cMensagem, "Teste 1 - Empty")

    //Agora faz direto o teste com if
    cNome := "aaa"
    If Empty(cNome)
        FWAlertError("Conte�do esta vazio na vari�vel", "Teste 2 - Empty")
    Else
        FWAlertInfo("A vari�vel possui conte�do", "Teste 2 - Empty")
    EndIf


    FWRestArea(aArea)
Return
