/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/04/removendo-caracteres-de-uma-string-atraves-da-strdelchr-maratona-advpl-e-tl-457/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe457
Remove alguns caracteres de uma string
@type Function
@author Atilio
@since 31/03/2023
@obs 
    Fun��o StrDelChr
    Par�metros
        Recebe a string a ser analisada
        Recebe um array com os textos a serem removidos
    Retorno
        Retorna o texto formatado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe457()
    Local aArea     := FWGetArea()
    Local cTexto    := ""
    Local aRetirar  := {}
    Local cNovo     := ""

    //Monta as informa��es e aciona a remo�a� de caracteres
    cTexto    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    aRetirar  := {"a", "m", " "}
    cNovo     := StrDelChr(cTexto, aRetirar)

    //Exibe a mensagem
    FWAlertInfo(cNovo, "Teste de StrDelChr")

    FWRestArea(aArea)
Return
