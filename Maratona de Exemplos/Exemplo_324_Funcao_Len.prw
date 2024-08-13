/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/30/lendo-um-arquivo-texto-com-a-letxt-maratona-advpl-e-tl-325/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe324
Retorna o tamanho de uma vari�vel (caractere ou array)
@type Function
@author Atilio
@since 11/03/2023
@see https://tdn.totvs.com/display/tec/Len
@obs 
    Fun��o Len
    Par�metros
        + xParam       , Indefinido , Vari�vel que ser� avaliada
    Retorno
        + nCount       , Num�rico   , Retorna o tamanho da vari�vel

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe324()
    Local aArea     := FWGetArea()
    Local cNome     := "Daniel"
    Local aDados    := {"Daniel", "Jo�o", "Maria"}
    Local cMensagem := ""

    //Monta a mensagem pegando o tamanho de cada vari�vel
    cMensagem := "cNome: "  + cValToChar( Len(cNome)  ) + CRLF
    cMensagem += "aDados: " + cValToChar( Len(aDados) ) + CRLF

    //Mostra o resultado
    FWAlertInfo(cMensagem, "Teste Len")

    FWRestArea(aArea)
Return
