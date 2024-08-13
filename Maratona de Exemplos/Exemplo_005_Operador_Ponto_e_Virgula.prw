/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/13/operador-para-continuar-na-proxima-linha-ou-proximo-comando-maratona-advpl-e-tl-005/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe005
Exemplo de como utilizar o operador ; (Ponto e V�rgula), para continuar a execu��o na pr�xima linha
@type Function
@author Atilio
@since 26/11/2022
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe005()
    Local aArea   := FWGetArea()
    Local cTexto  := ""
    Local aDados  := {}

    //Demonstra a continua��o da linha na pr�xima atrav�s do ponto e v�rgula
    cTexto := "O rato " + ;
        "roeu a roupa " + ;
        "do rei de Roma"
    FWAlertInfo(cTexto, "Conte�do da vari�vel cTexto")

    //Cria um array com v�rios elementos
    aDados := { ;
        "terminaldeinformacao.com", ;
        "autumncodemaker.com", ;
        "atiliosistemas.com" ;
    }
    FWAlertInfo("Tamanho do array: " + cValToChar(Len(aDados)), "Vari�vel aDados")

    FWRestArea(aArea)
Return
