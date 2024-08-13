/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/04/deixando-uma-string-tudo-minuscula-com-a-lower-maratona-advpl-e-tl-335/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe335
Transforma uma string, deixando todos os caracteres minusculos
@type Function
@author Atilio
@since 12/03/2023
@see https://tdn.totvs.com/display/tec/Lower
@obs 

    Fun��o Lower
    Par�metros
        + cText    , Caractere   , Texto que ser� deixado em min�sculo
    Retorno
        + cTextNew , Caractere   , Texto j� formatado tudo em min�sculo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe335()
    Local aArea   := FWGetArea()
    Local cMsgOri := "Terminal de Informa��o"
    Local cMsgMin := Lower(cMsgOri)
    
    //Exibe a string original e a formatada
    FWAlertInfo("Original: " + cMsgOri + CRLF + "Minusculo: " + cMsgMin, "Teste - Lower")

    FWRestArea(aArea)
Return
