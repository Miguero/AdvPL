/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/07/gerando-valores-randomicos-com-as-funcoes-randbytime-e-randbydate-maratona-advpl-e-tl-401/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe401
Gera valores randomicos conforme data e hora
@type Function
@author Atilio
@since 28/03/2023
@obs 
    Fun��o RandByTime
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna o valor randomico conforme a hora atual
    
    Fun��o RandByDate
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna o valor randomico conforme a data atual

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe401()
    Local aArea     := FWGetArea()
    Local cPorData  := ""
    Local cPorHora  := ""

    //Gera um valor randomico pela hora atual
    cPorHora := RandByTime()
    FWAlertInfo("Valor gerado �: " + cPorHora, "Teste RandByTime")

    //Gera um valor randomico pela data atual
    cPorData := RandByDate()
    FWAlertInfo("Valor gerado �: " + cPorData, "Teste RandByDate")

    FWRestArea(aArea)
Return
