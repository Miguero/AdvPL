/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/24/formatando-data-e-hora-com-a-fwtimestamp-maratona-advpl-e-tl-255/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe255
Retorna a data e hora pr� formatadas
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/public/framework/FWTimeStamp
@obs 

    Fun��o FWTimeStamp
    Par�metros
		+ nType          , Num�rico        , Tipo da formata��o (ver mais no link do TDN dispon�vel acima)
		+ dDate          , Data            , Data a ser formatada (se n�o enviar nada pega da Date() atual)
		+ cTime          , Caractere       , Hora a ser formatada (se n�o enviar nada pega da Time() atual)
    Retorno
        Retorna um texto a data pr� formatada
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe255()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""
    Local dData      := Date()
    Local cHora      := Time()

    //Monta uma mensagem com todos os tipos dispon�veis do FWTimeStamp
    cMensagem += "1: " + FWTimeStamp(1, dData, cHora) + CRLF //aaaammddhhmmss
    cMensagem += "2: " + FWTimeStamp(2, dData, cHora) + CRLF //dd/mm/aaaa-hh:mm:ss
    cMensagem += "3: " + FWTimeStamp(3, dData, cHora) + CRLF //aaaa-mm-ddThh:mm:ss
    cMensagem += "4: " + FWTimeStamp(4, dData, cHora) + CRLF //Total em milissegundos desde 01/01/1970
    cMensagem += "5: " + FWTimeStamp(5, dData, cHora) + CRLF //aaaa-mm-ddThh:mm:ss-+Time Zone
    cMensagem += "6: " + FWTimeStamp(6, dData, cHora)        //aaaa-mm-ddThh:mm:ssZ

    //Exibe a mensagem
    FWAlertInfo(cMensagem, "Teste FWTimeStamp")

    FWRestArea(aArea)
Return
