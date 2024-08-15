/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2023/05/01/incrementar-minutos-em-uma-variavel-de-hora-ti-responde-054/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVid0054
Fun��o para demonstrar em como incrementar ou decrementar minutos numa vari�vel
@type  Function
@author Atilio
@since 26/08/2022
/*/

User Function zVid0054()
    Local aArea     := FWGetArea()
    Local cHora     := Time()
    Local cExempSom := ""
    Local cExempSub := ""
    Local cMensagem := ""

    //Incrementa e decrementa horas, minutos e segundos
    cExempSom := IncTime(cHora, 2, 30, 10)
    cExempSub := DecTime(cHora, 1, 45, 30)

    //Exibe o resultado
    cMensagem := "Abaixo os detalhes da manipula��o de horas:" + CRLF
    cMensagem += "Hora Base: " + cHora + CRLF
    cMensagem += "Exemplo Adi��o: " + cExempSom + CRLF
    cMensagem += "Exemplo Subtra��o: " + cExempSub
    FWAlertInfo(cMensagem, "Resultado")

    FWRestArea(aArea)
Return
