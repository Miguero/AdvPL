/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/05/validando-o-tipo-de-variaveis-com-type-e-valtype-maratona-advpl-e-tl-518/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe519
Transforma uma string, deixando todos os caracteres maiusculos
@type Function
@author Atilio
@since 05/04/2023
@see https://tdn.totvs.com/display/tec/Upper
@obs 

    Fun��o Upper
    Par�metros
        + cText    , Caractere   , Texto que ser� deixado em mai�sculo
    Retorno
        + cTextNew , Caractere   , Texto j� formatado tudo em mai�sculo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe519()
    Local aArea   := FWGetArea()
    Local cMsgOri := "Terminal de Informa��o"
    Local cMsgMai := Upper(cMsgOri)
    
    //Exibe a string original e a formatada
    FWAlertInfo("Original: " + cMsgOri + CRLF + "Maiusculo: " + cMsgMai, "Teste - Upper")

    FWRestArea(aArea)
Return
