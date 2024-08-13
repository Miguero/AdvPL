/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/29/buscando-informacoes-de-um-objeto-do-repositorio-com-a-getapoinfo-maratona-advpl-e-tl-264/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe264
Fun��o que retorna informa��es de um objeto dentro do RPO
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetAPOInfo
@obs 

    Fun��o GetApoInfo
    Par�metros
        + cFonte        , Caractere        , Nome do C�digo Fonte
    Retorno
        + aData         , Array            , Array com os detalhes do c�digo fonte
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe264()
    Local aArea      := FWGetArea()
    Local aDados     := {}
    Local cMensagem  := ""

    //Busca as informa��es do fonte
    aDados := GetApoInfo("zMiniForm.prw")

    //Se houver informa��es, monta a mensagem e exibe
    If Len(aDados) > 0
        cMensagem := "Nome do Fonte: "              + aDados[01] + CRLF
        cMensagem += "Linguagem: "                  + aDados[02] + CRLF
        cMensagem += "Modo de Compila��o: "         + aDados[03] + CRLF
        cMensagem += "Data da �ltima modifica��o: " + dToC(aDados[04]) + CRLF
        cMensagem += "Hora da �ltima modifica��o: " + aDados[05]

        FWAlertInfo(cMensagem, "Teste GetApoInfo")
    EndIf

    FWRestArea(aArea)
Return
