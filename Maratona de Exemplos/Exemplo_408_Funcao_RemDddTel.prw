/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/11/removendo-aspas-de-uma-string-com-a-removeasp-maratona-advpl-e-tl-409/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe408
Faz a separa��o de DDI, DDD e n�mero do telefone
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o RemDddTel
    Par�metros
        Recebe o telefone no formato DDI+DDD+Numero
    Retorno
        Retorna um Array com as posi��es separadas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe408()
    Local aArea     := FWGetArea()
    Local cNumero   := ""
    Local aDados    := {}
    
    //Separa a string
    cNumero   := "5514999998888"
    aDados    := RemDddTel(cNumero)
    cMensagem := "Numero: " + aDados[1] + CRLF
    cMensagem += "DDD: "    + aDados[2] + CRLF
    cMensagem += "DDI: "    + aDados[3] + CRLF
    FWAlertInfo(cMensagem, "Teste RemDddTel")

    FWRestArea(aArea)
Return
