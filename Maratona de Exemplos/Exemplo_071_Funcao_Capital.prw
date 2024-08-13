/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/18/deixando-a-primeira-letra-maiuscula-e-o-restante-minuscula-com-capital-maratona-advpl-e-tl-071/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe071
Exemplo para converter uma string deixando a primeira letra mai�scula e o restante min�scula
@type Function
@author Atilio
@since 07/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814904
@obs 
    Fun��o Capital
    Par�metros
        + cString        , Caractere     , String a ser convertida
    Retorno
        + cReturn        , Caractere     , String j� convertida

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe071()
    Local aArea   := FWGetArea()
    Local cMsgOri := "TERMINAL DE INFORMA��O"
    Local cMsgCap := Capital(cMsgOri)
    
    //Exibe a string original e a formatada
    FWAlertInfo("Original: " + cMsgOri + CRLF + "Capital: " + cMsgCap, "Teste - Capital")

    FWRestArea(aArea)
Return
