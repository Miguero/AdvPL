/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/27/justificando-um-texto-com-a-justificatxt-maratona-advpl-e-tl-319/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe319
Formata uma string justificando o texto
@type Function
@author Atilio
@since 25/02/2023
@obs 
    JustificaTXT
    Par�metros
        Recebe a frase a ser formatada
        Recebe a quantidade de caracteres para formata��o
        Recebe se deve pular a linha ao encontrar -enter- na frase
    Retorno
        Retorna um Array com as linhas formatadas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe319()
    Local aArea      := FWGetArea()
    Local cFrase     := "O rato roeu a roupa do Rei de roma, a rainha com raiva resolveu remendar. Num ninho de mafagafos, cinco mafagafinhos h�! Quem os desmafagafiz�-los, um bom desmafagafizador ser�."
    Local aDados     := ""
    Local cMensagem  := ""
    Local nAtual     := 0

    //Justifica o texto
    aDados := JustificaTXT(cFrase, 30)

    //Percorre as linhas e monta a mensagem
    For nAtual := 1 To Len(aDados)
        cMensagem += "[" + cValToChar(nAtual) + "] '" + aDados[nAtual] + "'" + CRLF
    Next

    //Exibe a mensagem
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
