/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/01/tratando-caracteres-especiais-pra-web-com-lj904xwc-porencode-e-wcdecode-maratona-advpl-e-tl-329/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe329
Converte uma string para o padr�o usado em HTML
@type Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o Lj904XWC
    Par�metros
        Recebe uma string com os caracteres a serem tratados
    Retorno
        Retorna uma string formatada

    Fun��o PorEncode
    Par�metros
        Recebe uma string com os caracteres a serem tratados
        Recebe um par�metro l�gico se ir� formatar em HTML (.T.) ou se ir� formatar barras e -enters- (.F.)
    Retorno
        Retorna uma string formatada

    Fun��o WCDecode
    Par�metros
        Recebe uma string com os caracteres a serem tratados
    Retorno
        Retorna uma string formatada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe329()
    Local aArea     := FWGetArea()
    Local cFrase    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    Local cMensagem := ""
     
    //Aciona aqui as convers�es
    cMensagem += "Lj904XWC:  '" + Lj904XWC(cFrase)  + "'" + CRLF + CRLF
    cMensagem += "PorEncode: '" + PorEncode(cFrase) + "'" + CRLF + CRLF
    cMensagem += "WCDecode:  '" + WCDecode(cFrase)  + "'" + CRLF + CRLF
    ShowLog(cMensagem)
     
    FWRestArea(aArea)
Return
