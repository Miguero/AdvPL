/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/11/separando-partes-de-um-telefone-com-a-remdddtel-maratona-advpl-e-tl-408/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe409
Remove aspas e ap�strofos de uma string
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o RemoveAsp
    Par�metros
        Vari�vel caractere a ser verificada
    Retorno
        Retorna a vari�vel sem aspas ou ap�strofos

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe409()
    Local aArea     := FWGetArea()
    Local cTexto    := ""
    Local cMensagem := ""

    //Pega uma frase que tem aspas ou ap�strofos e remove
    cTexto := "E ele disse que 'Ol� mundo' em ingl�s � 'Hello world'!"
    cMensagem := RemoveAsp(cTexto)
    FWAlertInfo(cMensagem, "Teste RemoveAsp")

    FWRestArea(aArea)
Return
